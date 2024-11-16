.class Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2$1;
.super Ljava/lang/Object;
.source "BackgroundWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2$1;->this$1:Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0()V
    .locals 2

    .line 233
    sget-object v0, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->WEB_VIEW_JS_EVALUATED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/BroadcastUtils;->broadcast(Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2$1;->this$1:Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2$1;->this$1:Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$webView:Landroid/webkit/WebView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WEB_VIEW"

    const-string/jumbo v1, "we run the Js script."

    .line 230
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2$1;->this$1:Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2$1;->this$1:Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;

    iget-object v1, v1, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$jsScript:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/Tools;->evaluateJavascriptInWebViewCompat(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 233
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sget-object v1, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2$1$$ExternalSyntheticLambda0;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
