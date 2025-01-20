FROM python:3.12-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    libopenblas-dev \
    liblapack-dev \
    libx11-dev \
    libxrender-dev \
    libxext-dev \
    libjpeg-dev \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    pandas-profiling \
    seaborn

RUN pip install --no-cache-dir \
    numpy \
    pandas \
    scikit-learn \
    matplotlib \
    scipy \
    tensorflow \
    keras \
    pytorch \
    torch \
    torchvision \
    transformers \
    xgboost \
    lightgbm \
    catboost \
    jupyter \
    notebook \
    statsmodels \
    plotly \
    tqdm \
    mlxtend \
    imbalanced-learn \
    nltk \
    spacy \
    gensim \
    opencv-python-headless \
    joblib \
    pyyaml

RUN apt-get purge -y build-essential && apt-get autoremove -y

CMD ["python3"]
