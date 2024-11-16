.class public Lcom/chlegou/bitbot/utils/BackgroundWebView;
.super Ljava/lang/Object;
.source "BackgroundWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chlegou/bitbot/utils/BackgroundWebView$WebViewJobInterface;
    }
.end annotation


# static fields
.field public static final KEY_JS_SCRIPT:Ljava/lang/String; = "JS_SCRIPT"

.field public static final KEY_JS_SCRIPT_DELAY_MILLIS:Ljava/lang/String; = "JS_SCRIPT_DELAY_MILLIS"

.field public static final KEY_PROVIDER_NAME:Ljava/lang/String; = "PROVIDER_NAME"

.field public static final KEY_URL:Ljava/lang/String; = "URL"

.field private static final TAG:Ljava/lang/String; = "BackgroundWebView"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/chlegou/bitbot/utils/BackgroundWebView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static open(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 49
    new-instance v0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/chlegou/bitbot/utils/BackgroundWebView$1;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 276
    new-instance p0, Landroid/os/Message;

    invoke-direct {p0}, Landroid/os/Message;-><init>()V

    .line 277
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const-wide/16 v1, 0x64

    .line 279
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
