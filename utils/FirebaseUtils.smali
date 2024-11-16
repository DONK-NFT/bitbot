.class public Lcom/chlegou/bitbot/utils/FirebaseUtils;
.super Ljava/lang/Object;
.source "FirebaseUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FirebaseUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchAndSaveFCMToken()V
    .locals 2

    .line 16
    sget-object v0, Lcom/chlegou/bitbot/utils/FirebaseUtils;->TAG:Ljava/lang/String;

    const-string v1, "initIdTokenListener"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public static getUserEmail()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "NOT_LOGGED_IN"

    :goto_0
    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 1

    .line 56
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "NOT_LOGGED_IN"

    :goto_0
    return-object v0
.end method

.method static synthetic lambda$fetchAndSaveFCMToken$0(Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    sget-object v1, Lcom/chlegou/bitbot/utils/FirebaseUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching FCM registration token failed with Exception:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 25
    :cond_0
    sget-object p0, Lcom/chlegou/bitbot/utils/FirebaseUtils;->TAG:Ljava/lang/String;

    const-string v0, "Fetching FCM registration token failed with null Exception."

    invoke-static {p0, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/chlegou/bitbot/utils/FirebaseUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FCM token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p0}, Lcom/chlegou/bitbot/utils/FirebaseUtils;->sendFCMTokenToServer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$sendFCMTokenToServer$1(Lcom/chlegou/bitbot/models/FCMTokenRequest;)V
    .locals 0

    .line 49
    invoke-static {p0}, Lcom/chlegou/bitbot/network/BitBotNotificationClientHandler;->saveFCMToken(Lcom/chlegou/bitbot/models/FCMTokenRequest;)V

    return-void
.end method

.method public static sendFCMTokenToServer(Ljava/lang/String;)V
    .locals 3

    .line 38
    sget-object v0, Lcom/chlegou/bitbot/utils/FirebaseUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending FCM token to server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->getUid()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "canceling saving FCM token since no user is logged in."

    .line 41
    invoke-static {v0, p0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    invoke-static {}, Lcom/chlegou/bitbot/models/FCMTokenRequest;->builder()Lcom/chlegou/bitbot/models/FCMTokenRequest$FCMTokenRequestBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FCMTokenRequest$FCMTokenRequestBuilder;->uid(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FCMTokenRequest$FCMTokenRequestBuilder;

    move-result-object v0

    const-string v1, "com.chlegou.bitbot"

    .line 46
    invoke-virtual {v0, v1}, Lcom/chlegou/bitbot/models/FCMTokenRequest$FCMTokenRequestBuilder;->appId(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FCMTokenRequest$FCMTokenRequestBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p0}, Lcom/chlegou/bitbot/models/FCMTokenRequest$FCMTokenRequestBuilder;->token(Ljava/lang/String;)Lcom/chlegou/bitbot/models/FCMTokenRequest$FCMTokenRequestBuilder;

    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lcom/chlegou/bitbot/models/FCMTokenRequest$FCMTokenRequestBuilder;->build()Lcom/chlegou/bitbot/models/FCMTokenRequest;

    move-result-object p0

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/chlegou/bitbot/utils/FirebaseUtils$$ExternalSyntheticLambda1;-><init>(Lcom/chlegou/bitbot/models/FCMTokenRequest;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
