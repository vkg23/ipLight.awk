# Vipin AWK
# What ever input type , IP in COL or row, delimiter is comma, 'dash' what ever.. Or how many ..
# This rewrites the documents with any identified IP (OK-Green OR NOK-RED). IP will be pinged Once to generate the status.
# Example: ifconfig | awk -f ipLighter.awk

function myping (IP) {
        CMD="ping -c 1 -W 1 "IP" | grep rtt "
        close(CMD)
        if (CMD|getline var) {
                return "ok"
        }
}

BEGIN {
        GREEN="&\033[1;32m(OK)\033[0m"
        REDB="&\033[1;41m(!NOK!)\033[0m"
        SKIP="&(SKIP)"
        printf "IP found any where is parsed & pinged \n input reprinted as x.x.x.x(%s)/Green for ping OK \n as x.x.x.x(%s)/RED for ping Not-OK\n",GREEN,REDB
}

$0 ~ /[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/ {

                line = $0
                newline = line

                while (1==1) {
                match(line,/[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}/)
                if (RLENGTH == -1 ) {break}
                x=substr(line,RSTART,RLENGTH)
        if (x !~ /255|^127/) {
                if (myping(x) == "ok") {
                        sub(x,GREEN,newline)
                        }
                else {
                        sub(x,REDB,newline)
                }
    }
    else {sub(x,SKIP,newline)}

                gsub(x,"",line)

                }
        print newline
        next
}

{
        print $0
}
