.class public Lcom/chlegou/bitbot/utils/FirebaseRemoteConfigInitiator;
.super Ljava/lang/Object;
.source "FirebaseRemoteConfigInitiator.java"


# static fields
.field public static final FREEBITCOIN_RP_BONUS_CONFIG_LIST:Ljava/lang/String; = "FREEBITCOIN_RP_BONUS_CONFIG_LIST"

.field public static final KEY_APPLICATION_MAJOR_VERSION:Ljava/lang/String; = "APPLICATION_MAJOR_VERSION"

.field public static final KEY_APPLICATION_MINOR_VERSION:Ljava/lang/String; = "APPLICATION_MINOR_VERSION"

.field public static final KEY_FREEBITCOIN_AUTO_ROLL_MAX_NOTIFICATION:Ljava/lang/String; = "FREEBITCOIN_AUTO_ROLL_MAX_NOTIFICATION"

.field public static final KEY_LINKS_PROVIDERS:Ljava/lang/String; = "LINKS_PROVIDERS"

.field public static final KEY_NEWS_FEED:Ljava/lang/String; = "NEWS_FEED"

.field public static final KEY_PATTERN_FREEBITCOIN_AUTO_ROLL_TCGIQEFA:Ljava/lang/String; = "PATTERN_FREEBITCOIN_AUTO_ROLL_TCGIQEFA"

.field public static final KEY_PATTERN_FREEBITCOIN_AUTO_ROLL_TOKEN_NAME:Ljava/lang/String; = "PATTERN_FREEBITCOIN_AUTO_ROLL_TOKEN_NAME"

.field public static final KEY_PATTERN_FREEBITCOIN_AUTO_ROLL_TOKEN_VALUE:Ljava/lang/String; = "PATTERN_FREEBITCOIN_AUTO_ROLL_TOKEN_VALUE"

.field public static final KEY_TEST:Ljava/lang/String; = "TEST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initiateDefaults()V
    .locals 4

    .line 31
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    .line 32
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->setMinimumFetchIntervalInSeconds(J)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v0

    .line 34
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, -0x1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TEST"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "APPLICATION_MINOR_VERSION"

    const-string v2, "1.6.4"

    .line 40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "APPLICATION_MAJOR_VERSION"

    .line 41
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110001

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/ResourceUtils;->getResourceFileAsString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "LINKS_PROVIDERS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PATTERN_FREEBITCOIN_AUTO_ROLL_TOKEN_NAME"

    const-string/jumbo v2, "token_name.\\W.[\"\'](\\S*)[\"\']"

    .line 46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PATTERN_FREEBITCOIN_AUTO_ROLL_TOKEN_VALUE"

    const-string/jumbo v2, "token1.\\W.[\"\'](\\S*)[\"\']"

    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PATTERN_FREEBITCOIN_AUTO_ROLL_TCGIQEFA"

    const-string/jumbo v2, "tcGiQefA.\\W.[\"\'](\\S*)[\"\']"

    .line 48
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FREEBITCOIN_AUTO_ROLL_MAX_NOTIFICATION"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110006

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/ResourceUtils;->getResourceFileAsString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FREEBITCOIN_RP_BONUS_CONFIG_LIST"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {}, Lcom/chlegou/bitbot/app/MainApp;->getRes()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110002

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/ResourceUtils;->getResourceFileAsString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NEWS_FEED"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaultsAsync(Ljava/util/Map;)Lcom/google/android/gms/tasks/Task;

    .line 59
    invoke-static {}, Lcom/chlegou/bitbot/utils/FirebaseRemoteConfigInitiator;->remoteFetch()V

    return-void
.end method

.method public static remoteFetch()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchAndActivate()Lcom/google/android/gms/tasks/Task;

    return-void
.end method
