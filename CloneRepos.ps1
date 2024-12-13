# Define o caminho base para os repositórios
$basePath = "D:\MEUSSITESEPROJETOS\REPOSITORIOS\LOTERIAS-CAIXA"

# Define as pastas onde os repositórios serão clonados
$folders = @(
	"Loterias-Modalidades",
    "Loterias-Cal", 
	"Loterias-IA", 
    "Loterias-Desdobramento",
    "Loterias-Estrategia",
    "Loterias-Login"
)

# Cria as pastas se não existirem
foreach ($folder in $folders) {
    $folderPath = Join-Path -Path $basePath -ChildPath $folder
    if (-not (Test-Path -Path $folderPath)) {
        New-Item -Path $folderPath -ItemType Directory
    }
}

# Lista dos repositórios a serem clonados com seus respectivos caminhos
$repositories = @(
    "https://github.com/marciomaia2020/Loteca"              , "Loterias-Modalidades",
    "https://github.com/marciomaia2020/Lotofacil"           , "Loterias-Modalidades",
    "https://github.com/marciomaia2020/Lotomania"           , "Loterias-Modalidades",
    "https://github.com/marciomaia2020/MaisMilionaria"      , "Loterias-Modalidades",
    "https://github.com/marciomaia2020/MegaSena"            , "Loterias-Modalidades",
    "https://github.com/marciomaia2020/Quina"               , "Loterias-Modalidades",
    "https://github.com/marciomaia2020/SuperSete"           , "Loterias-Modalidades",
    "https://github.com/marciomaia2020/Timemania"           , "Loterias-Modalidades",
    "https://github.com/marciomaia2020/DiaDeSorte"          , "Loterias-Modalidades",
    "https://github.com/marciomaia2020/DuplaSena"           , "Loterias-Modalidades",
    "https://github.com/marciomaia2020/Federal"             , "Loterias-Modalidades",
    
    "https://github.com/marciomaia2020/LotecaCal"           , "Loterias-Cal",
    "https://github.com/marciomaia2020/LotofacilCal"        , "Loterias-Cal",
    "https://github.com/marciomaia2020/LotomaniaCal"        , "Loterias-Cal",
    "https://github.com/marciomaia2020/MaisMilionariaCal"   , "Loterias-Cal",
    "https://github.com/marciomaia2020/MegaSenaCal"         , "Loterias-Cal",
    "https://github.com/marciomaia2020/QuinaCal"            , "Loterias-Cal",
    "https://github.com/marciomaia2020/SuperSeteCal"        , "Loterias-Cal",
    "https://github.com/marciomaia2020/TimemaniaCal"        , "Loterias-Cal",
    "https://github.com/marciomaia2020/DiaDeSorteCal"       , "Loterias-Cal",
    "https://github.com/marciomaia2020/DuplaSenaCal"        , "Loterias-Cal",
    "https://github.com/marciomaia2020/FederalCal"          , "Loterias-Cal",
	
	"https://github.com/marciomaia2020/Lotecaia"			, "Loterias-IA",
    "https://github.com/marciomaia2020/Lotofacilia"			, "Loterias-IA",
    "https://github.com/marciomaia2020/Lotomaniaia",		, "Loterias-IA",
    "https://github.com/marciomaia2020/MaisMilionariaia"	, "Loterias-IA",
    "https://github.com/marciomaia2020/MegaSenaia"			, "Loterias-IA",
    "https://github.com/marciomaia2020/Quinaia"				, "Loterias-IA",
    "https://github.com/marciomaia2020/SuperSeteia"			, "Loterias-IA",
    "https://github.com/marciomaia2020/Timemaniaia"			, "Loterias-IA",
    "https://github.com/marciomaia2020/DiaDeSorteia"		, "Loterias-IA",
    "https://github.com/marciomaia2020/DuplaSenaia"			, "Loterias-IA",
    "https://github.com/marciomaia2020/Federalia"			, "Loterias-IA",

	"https://github.com/marciomaia2020/LotecaDesdobramento-"		, "Loterias-Desdobramento",
    "https://github.com/marciomaia2020/LotofacilDesdobramento"		, "Loterias-Desdobramento",
    "https://github.com/marciomaia2020/LotomaniaDesdobramento"		, "Loterias-Desdobramento",
    "https://github.com/marciomaia2020/MaisMilionariaDesdobramento"	, "Loterias-Desdobramento",
    "https://github.com/marciomaia2020/MegaSenaDesdobramento"		, "Loterias-Desdobramento",
    "https://github.com/marciomaia2020/QuinaDesdobramento"			, "Loterias-Desdobramento",
    "https://github.com/marciomaia2020/SuperSeteDesdobramento"		, "Loterias-Desdobramento",
    "https://github.com/marciomaia2020/TimemaniaDesdobramento"		, "Loterias-Desdobramento",
    "https://github.com/marciomaia2020/DiaDeSorteDesdobramento"		, "Loterias-Desdobramento",
    "https://github.com/marciomaia2020/DuplaSenaDesdobramento"		, "Loterias-Desdobramento",
    "https://github.com/marciomaia2020/FederalDesdobramento"		, "Loterias-Desdobramento",
	
	"https://github.com/marciomaia2020/LotecaEstra"					, "Loterias-Estrategia",
    "https://github.com/marciomaia2020/LotofacilEstra"				, "Loterias-Estrategia",
    "https://github.com/marciomaia2020/LotomaniaEstra"				, "Loterias-Estrategia",
    "https://github.com/marciomaia2020/MaisMilionariaEstra"			, "Loterias-Estrategia",
    "https://github.com/marciomaia2020/MegaSenaEstra"				, "Loterias-Estrategia",
    "https://github.com/marciomaia2020/QuinaEstra"					, "Loterias-Estrategia",
    "https://github.com/marciomaia2020/SuperSeteEstra"				, "Loterias-Estrategia",
    "https://github.com/marciomaia2020/TimemaniaEstra"				, "Loterias-Estrategia",
    "https://github.com/marciomaia2020/DiaDeSorteEstra"				, "Loterias-Estrategia",
    "https://github.com/marciomaia2020/DuplaSenaEstra"				, "Loterias-Estrategia",
    "https://github.com/marciomaia2020/FederalEstra"				, "Loterias-Estrategia",
	
	"https://github.com/marciomaia2020/Lotomaniaia-login"			, "Loterias-Login",
    "https://github.com/marciomaia2020/MegaSenaia-login"			, "Loterias-Login"
	
)

# Clona os repositórios nas pastas correspondentes
for ($i = 0; $i -lt $repositories.Length; $i += 2) {
    $repoUrl = $repositories[$i]
    $folderName = $repositories[$i + 1]
    
    # Caminho completo da pasta onde o repositório será clonado
    $folderPath = Join-Path -Path $basePath -ChildPath $folderName
    $repoName = [System.IO.Path]::GetFileNameWithoutExtension($repoUrl)
    $clonePath = Join-Path -Path $folderPath -ChildPath $repoName

    # Verifica se o repositório já foi clonado, caso contrário, clona
    if (-not (Test-Path -Path $clonePath)) {
        Write-Host "Clonando $repoUrl em $clonePath"
        git clone $repoUrl $clonePath
    } else {
        Write-Host "$repoName já está clonado em $clonePath"
    }
}
