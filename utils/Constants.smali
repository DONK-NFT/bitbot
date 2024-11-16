.class public Lcom/chlegou/bitbot/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final APPLICATION_ID_IN_PLAY_STORE:Ljava/lang/String; = "com.chlegou.bitbot"

.field public static final APP_DIRECT_DOWNLOAD_LINK:Ljava/lang/String; = "https://chlegou.github.io/download_latest/chlegou/bitbot/"

.field public static final APP_HELP:Ljava/lang/String; = "https://pages.bitbot.plus"

.field public static final APP_MODE_RELEASE:Z = true

.field public static final APP_NAME:Ljava/lang/String;

.field public static final APP_OFFICIAL_WEBSITE:Ljava/lang/String; = "https://bitbot.plus"

.field public static final APP_PRIVACY:Ljava/lang/String; = "https://bitbot.plus/privacy.html"

.field public static final APP_SYNCHRONIZER_NOTIFICATION_ID:I = 0x1e61

.field public static final APP_TERMS:Ljava/lang/String; = "https://bitbot.plus/terms.html"

.field public static final APP_TEST_MODE_NEW_VERSION:Z = false

.field public static final APP_TEST_MODE_OUTDATED:Z = false

.field public static final BITBOT_DATA_KEY_FREEBITCOIN_ACCOUNT_ID:Ljava/lang/String; = "FREEBITCOIN_ACCOUNT_ID"

.field public static final BITBOT_TOPIC:Ljava/lang/String; = "BITBOT_TOPIC"

.field public static final BITBOT_TOPIC_AUTO_ROLL:Ljava/lang/String; = "AUTO_ROLL"

.field public static final CONTACT_EMAIL:Ljava/lang/String;

.field public static final CONTACT_SUBJECT:Ljava/lang/String;

.field public static final CONTACT_TITLE:Ljava/lang/String;

.field public static final COPY_EMAIL_TOAST:Ljava/lang/String;

.field public static final FIREBASE_FAILURE_NOTIFICATION_ID:I = 0x1e6c

.field public static final FIREBASE_FOREGROUND_NOTIFICATION_ID:I = 0x1e6b

.field public static final JS_FUNCTION_SIMULATE_MOUSE_EVENTS:Ljava/lang/String; = "function simulateMouseEvents(u){[\'mouseover\',\'mousedown\',\'mouseup\',\'click\'].forEach(function(e){var n,t,o;n=u,t=e,(o=document.createEvent(\'MouseEvents\')).initEvent(t,!0,!0),n.dispatchEvent(o)})}"

.field public static final JS_SCRIPT_ADFLY:Ljava/lang/String; = "javascript:(function() {function simulateMouseEvents(u){[\'mouseover\',\'mousedown\',\'mouseup\',\'click\'].forEach(function(e){var n,t,o;n=u,t=e,(o=document.createEvent(\'MouseEvents\')).initEvent(t,!0,!0),n.dispatchEvent(o)})}simulateMouseEvents(document.querySelector(\'#skip_bu2tton\'));$(\'#skip_bu2tton\').click();})()"

.field public static final JS_SCRIPT_MUTE_WEBVIEW_AUDIOS:Ljava/lang/String; = "javascript:function muteMe(e){e.muted=!0,e.pause()}function mutePage(){var e=document.querySelectorAll(\'video, audio\');[].forEach.call(e,function(e){muteMe(e)})}setInterval(function(){mutePage()},3e3);"

.field public static final PATTERN_FREEBITCOIN_AUTO_ROLL_TCGIQEFA:Ljava/lang/String; = "tcGiQefA.\\W.[\"\'](\\S*)[\"\']"

.field public static final PATTERN_FREEBITCOIN_AUTO_ROLL_TOKEN_NAME:Ljava/lang/String; = "token_name.\\W.[\"\'](\\S*)[\"\']"

.field public static final PATTERN_FREEBITCOIN_AUTO_ROLL_TOKEN_VALUE:Ljava/lang/String; = "token1.\\W.[\"\'](\\S*)[\"\']"

.field public static final SHARE_APP_SUBJECT:Ljava/lang/String;

.field public static final SHARE_APP_TEXT:Ljava/lang/String;

.field public static final SHARE_APP_TITLE:Ljava/lang/String;

.field public static final URL_ATMEGAME_OFFICIAL_WEBSITE:Ljava/lang/String; = "https://www.atmegame.com/?utm_source=chlegou&utm_medium=chlegou"

.field public static final URL_BATTERY_WHITELIST_SETTINGS:Ljava/lang/String; = "https://bitbotplus.page.link/bwlist"

.field public static final URL_BITBOT_SOCIAL_FACEBOOK:Ljava/lang/String; = "https://fb.me/bitbotplus"

.field public static final URL_BITBOT_SOCIAL_MESSENGER:Ljava/lang/String; = "https://m.me/bitbotplus"

.field public static final URL_BITBOT_WEBAPP:Ljava/lang/String; = "https://my.bitbot.plus"

.field public static final URL_BITLIST_OFFICIAL_WEBSITE:Ljava/lang/String; = "https://bitlist.plus"

.field public static final URL_GAMEZOP_OFFICIAL_WEBSITE:Ljava/lang/String; = "https://www.gamezop.com/?id=zfUHW8jIU&sub=%SUB%"

.field public static final URL_MGLGAMES_OFFICIAL_WEBSITE:Ljava/lang/String; = "http://491.go.mglgamez.com/"

.field public static final URL_PREDCHAMP_OFFICIAL_WEBSITE:Ljava/lang/String; = "https://370.go.predchamp.com/"

.field public static final URL_QUREKA_OFFICIAL_WEBSITE:Ljava/lang/String; = "https://370.go.qureka.com/"

.field public static final YODO1_APP_KEY:Ljava/lang/String; = "RPGGq6ItY7"


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chlegou/bitbot/utils/Constants;->APP_NAME:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v1, 0x7f12013c

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/chlegou/bitbot/utils/Constants;->SHARE_APP_TITLE:Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": FreeBitcoin auto roll bot for android."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/chlegou/bitbot/utils/Constants;->SHARE_APP_SUBJECT:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hey check out "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "! Claim FREE BTC Rewards Automatically from FreeBitcoin Website! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "https://bitbot.plus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/chlegou/bitbot/utils/Constants;->SHARE_APP_TEXT:Ljava/lang/String;

    .line 47
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/chlegou/bitbot/utils/Constants;->COPY_EMAIL_TOAST:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/chlegou/bitbot/utils/Constants;->CONTACT_TITLE:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/chlegou/bitbot/utils/Constants;->CONTACT_EMAIL:Ljava/lang/String;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " App: Help Needed!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chlegou/bitbot/utils/Constants;->CONTACT_SUBJECT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactTextContent()Ljava/lang/String;
    .locals 5

    .line 53
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12013f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "1.6.4"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x5

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-static {}, Lcom/chlegou/bitbot/utils/Tools;->isGooglePlayServicesAvailable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 61
    invoke-static {}, Lcom/chlegou/bitbot/utils/FirebaseUtils;->getUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 62
    invoke-static {}, Lcom/chlegou/bitbot/utils/FirebaseUtils;->getUserEmail()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    aput-object v3, v2, v4

    .line 53
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
