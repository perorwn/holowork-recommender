$ErrorActionPreference = 'Stop'
$imageDir = Join-Path $PSScriptRoot 'images'
New-Item -ItemType Directory -Force -Path $imageDir | Out-Null

$images = @(
  '2020/06/Tokino-Sora_list_thumb.png','2020/06/Robocosan_list_thumb.png','2020/06/AZKi_list_thumb.png','2020/06/Sakura-Miko_list_thumb.png','2020/06/Hoshimachi-Suisei_list_thumb.png','2020/06/Aki-Rosenthal_list_thumb.png','2020/06/Akai-Haato_list_thumb.png','2020/06/Shirakami-Fubuki_list_thumb.png','2020/06/Natsuiro-Matsuri_list_thumb.png','2020/06/Nakiri-Ayame_list_thumb.png','2020/06/Yuzuki-Choco_list_thumb.png','2020/06/Oozora-Subaru_list_thumb.png','2020/06/Ookami-Mio_thumb.png','2020/06/Nekomata-Okayu_list_thumb.png','2020/06/Inugami-Korone_list_thumb.png','2020/06/Usada-Pekora_list_thumb.png','2020/06/Shiranui-Flare_list_thumb.png','2020/06/Shirogane-Noel_list_thumb.png','2020/06/Houshou-Marine_list_thumb.png','2020/06/Tsunomaki-Watame_list_thumb.png','2020/06/Tokoyami-Towa_list_thumb.png','2020/06/Himemori-Luna_list_thumb.png','2020/06/Yukihana-Lamy_list_thumb.png','2020/06/Momosuzu-Nene_list_thumb.png','2020/07/Shishiro-Botan_list_thumb.png','2020/07/Omaru-Polka_list_thumb.png','2020/07/La-Darknesss_list_thumb.png','2020/07/Takane-Lui_list_thumb.png','2020/07/Hakui-Koyori_list_thumb.png','2020/07/Kazama-Iroha_list_thumb.png','2020/07/Ayunda-Risu_list_thumb.png','2020/07/Moona-Hoshinova_list_thumb.png','2020/07/Airani-Iofifteen_list_thumb.png','2020/07/Kureiji-Ollie_list_thumb.png','2020/07/Anya-Melfissa_list_thumb.png','2020/07/Pavolia-Reine_list_thumb.png','2020/07/Vestia-Zeta_list_thumb.png','2020/07/Kaela-Kovalskia_list_thumb.png','2020/07/Kobo-Kanaeru_list_thumb.png','2020/07/Mori-Calliope_list_thumb.png','2020/07/Takanashi-Kiara_list_thumb.png','2020/07/Ninomae-Inanis_list_thumb.png','2020/07/IRyS_list_thumb.png','2020/07/Ouro-Kronii_list_thumb.png','2020/07/Hakos-Baelz_list_thumb.png','2021/07/Shiori-Novella_list_thumb.png','2021/07/Koseki-Bijou_list_thumb.png','2021/07/Nerissa-Ravencroft_list_thumb.png','2021/07/Fuwawa-Abyssgard_list_thumb.png','2021/07/Mococo-Abyssgard_list_thumb.png','2023/09/Otonose-Kanade_list_thumb.png','2023/09/Ichijou-Ririka_list_thumb.png','2023/09/Juufuutei-Raden_list_thumb.png','2023/09/Todoroki-Hajime_list_thumb.png'
)

for ($i = 0; $i -lt $images.Count; $i++) {
  $file = '{0:D2}.png' -f ($i + 1)
  $url = 'https://hololive.hololivepro.com/wp-content/uploads/' + $images[$i]
  Invoke-WebRequest -Uri $url -OutFile (Join-Path $imageDir $file)
  Write-Host "$file ($($i + 1)/$($images.Count))"
}

Write-Host "완료: $($images.Count)개 이미지를 저장했습니다."
