.class public Lcom/chlegou/bitbot/network/ClientUtils;
.super Ljava/lang/Object;
.source "ClientUtils.java"


# static fields
.field public static final BITBOT_API_BASE_URL:Ljava/lang/String; = "https://api.bitbot.plus/"

.field public static final BITBOT_API_BASE_URL_IP:Ljava/lang/String; = "http://162.0.225.180:7000/"

.field public static final BITBOT_API_BASE_URL_TLS:Ljava/lang/String; = "https://api.bitbot.plus/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitBotFreebitcoinBaseAPI()Ljava/lang/String;
    .locals 2

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const-string v0, "https://api.bitbot.plus/"

    goto :goto_0

    :cond_0
    const-string v0, "http://162.0.225.180:7000/"

    :goto_0
    return-object v0
.end method
