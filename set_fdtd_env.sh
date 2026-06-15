if [ -n "$CONDA_PREFIX" ]; then
    echo "Your shell has already an initialized Conda environment" >$2
    echo "Please source this script from a new shell." >$2
else
    source /course_materials/opt/conda-env/init_dftb_plus-serial.sh
    source ${CURRENT_CONDA_OPT}/init_all.sh
    export CURRENT_SESSION_ROOT=/course_materials/sessions/4_real-time-dynamics/4b_part
    export PATH=${CURRENT_SESSION_ROOT}:${PATH}
    MARADO_BIN="${CURRENT_SESSION_ROOT}/MARADO/build/bin"
    export PATH="${MARADO_BIN}:${PATH}"
fi