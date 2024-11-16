.class public interface abstract Lcom/chlegou/bitbot/network/BitBotNotificationClient;
.super Ljava/lang/Object;
.source "BitBotNotificationClient.java"


# static fields
.field public static final BASE_PATH:Ljava/lang/String; = "s/notification/api/"

.field public static final BITBOT_API_POST_FCM_TOKEN:Ljava/lang/String; = "s/notification/api/fcm/token"

.field public static final instance:Lcom/chlegou/bitbot/network/BitBotNotificationClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    invoke-static {}, Lcom/chlegou/bitbot/network/RetrofitClient;->getBitBotAPIInstance()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v1, Lcom/chlegou/bitbot/network/BitBotNotificationClient;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chlegou/bitbot/network/BitBotNotificationClient;

    sput-object v0, Lcom/chlegou/bitbot/network/BitBotNotificationClient;->instance:Lcom/chlegou/bitbot/network/BitBotNotificationClient;

    return-void
.end method


# virtual methods
.method public abstract saveFCMToken(Lcom/chlegou/bitbot/models/FCMTokenRequest;)Lretrofit2/Call;
    .param p1    # Lcom/chlegou/bitbot/models/FCMTokenRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chlegou/bitbot/models/FCMTokenRequest;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "s/notification/api/fcm/token"
    .end annotation
.end method
