.class Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;
.super Landroid/webkit/WebViewClient;
.source "BackgroundWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/BackgroundWebView$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chlegou/bitbot/utils/BackgroundWebView$1;

.field final synthetic val$jsScript:Ljava/lang/String;

.field final synthetic val$jsScriptDelayMillis:J

.field final synthetic val$webView:Landroid/webkit/WebView;

.field final synthetic val$windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/utils/BackgroundWebView$1;Landroid/view/WindowManager;Landroid/webkit/WebView;Ljava/lang/String;J)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->this$0:Lcom/chlegou/bitbot/utils/BackgroundWebView$1;

    iput-object p2, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$windowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$webView:Landroid/webkit/WebView;

    iput-object p4, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$jsScript:Ljava/lang/String;

    iput-wide p5, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$jsScriptDelayMillis:J

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private handleError(Landroid/webkit/WebView;ILjava/lang/String;Landroid/net/Uri;)V
    .locals 0

    const-string p1, "WEB_VIEW"

    const-string p2, "an error has occurred!"

    .line 264
    invoke-static {p1, p2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onPageFinished$0()V
    .locals 2

    .line 218
    sget-object v0, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->WEB_VIEW_JS_EVALUATED:Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/BroadcastUtils;->broadcast(Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 204
    invoke-static {}, Lcom/chlegou/bitbot/utils/BackgroundWebView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WEB_VIEW :: page finished,"

    invoke-static {p1, p2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$windowManager:Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$webView:Landroid/webkit/WebView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$webView:Landroid/webkit/WebView;

    const-string p2, "javascript:function muteMe(e){e.muted=!0,e.pause()}function mutePage(){var e=document.querySelectorAll(\'video, audio\');[].forEach.call(e,function(e){muteMe(e)})}setInterval(function(){mutePage()},3e3);"

    invoke-static {p1, p2}, Lcom/chlegou/bitbot/utils/Tools;->evaluateJavascriptInWebViewCompat(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$jsScript:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 218
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    sget-object p2, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2$$ExternalSyntheticLambda0;->INSTANCE:Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2$$ExternalSyntheticLambda0;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 224
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2$1;

    invoke-direct {p2, p0}, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2$1;-><init>(Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;)V

    iget-wide v0, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->val$jsScriptDelayMillis:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 256
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    .line 258
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->handleError(Landroid/webkit/WebView;ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 249
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 250
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    .line 251
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3, p2}, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;->handleError(Landroid/webkit/WebView;ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
