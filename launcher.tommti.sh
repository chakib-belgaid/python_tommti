

min=2 
max=120
step=20

implementations=( \
stacklesspython2 \
stacklesspython3 \
intelpython2 \
intelpython3 \
activepython \
cython2 \
cython3 \
graalpython \
ipy \
jython \
micropython \
nuitka \
numba \
pypy2 \
pypy3 \
python2 \
python3 \
shedskin 
 
)

functions=(   \
        intArithmetic \
        doubleArithmetic \
        longArithmetic \
        # trig \
        # array \
        # hashtest \
        # hashes\
        # heapsort \
        # vector \
        # matrixMultiply \
        # nestedLoop \
        # stringConcat \
        # io \
        # except \
        )

# function=intArithmetic
# i=20
for implem in ${implementations[@]}; do 
docker pull chakibmed/icse_$implem:tommtiv1 ; 
# done 
j=0
i=50 
j=$((0))
tag="tommti"
# while true ; 
# do 



    for function in ${functions[@]} ; 
    do 
        j=$((0))
        while [ $j -lt 100 ] ; 
        do 
            for implem in ${implementations[@]}; 
            do 
                name=$tag"_"$implem"_"$function"_"$i"_"$j
                echo $implem  $function 5 $i  $j ;
                # docker pull chakibmed/icse_$implem:tommtiv1
                ./tester.sh -n $name chakibmed/$implem:$tag $function 5 $i  ;
                # echo  chakibmed/$implem:$tag $function 5 $i  ;
            done
        j=$((j+1))  
        done
    done

    # i=$((i + 10 ))
# done 

shutdown