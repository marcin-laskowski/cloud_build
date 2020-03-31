if [[ "$PROJECT_ID" ]]; then
    V=case_1
elif [[ ${PROJECT_I} == "developer-269501" ]]; then
    V=case_2
else 
    V=case_3
fi

echo $V