@echo off
chcp 65001 > nul
title DASHBOARD FINANCEIRO PROFISSIONAL
echo ====================================
echo    DASHBOARD FINANCEIRO - FLUXO DE CAIXA
echo ====================================
echo.
echo Verificando e instalando dependencias...
python -c "import streamlit, pandas, plotly, numpy, fpdf" 2>nul

if errorlevel 1 (
    echo.
    echo Instalando bibliotecas necessarias...
    pip install streamlit pandas plotly numpy fpdf2
    echo.
    echo Instalacao concluida!
) else (
    echo.
    echo Todas as bibliotecas ja estao instaladas!
)

echo.
echo Iniciando Dashboard Financeiro...
echo.
echo 📊 Aguarde... O navegador abrira automaticamente.
echo.
timeout /t 3 /nobreak >nul
python -m streamlit run dashboard.py

pause