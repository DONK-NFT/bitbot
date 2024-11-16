.class Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1;
.super Landroid/content/BroadcastReceiver;
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

.field final synthetic val$jsScriptDelayMillis:J

.field final synthetic val$webView:Landroid/webkit/WebView;

.field final synthetic val$windowManager:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/utils/BackgroundWebView$1;Landroid/view/WindowManager;Landroid/webkit/WebView;J)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1;->this$0:Lcom/chlegou/bitbot/utils/BackgroundWebView$1;

    iput-object p2, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1;->val$windowManager:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1;->val$webView:Landroid/webkit/WebView;

    iput-wide p4, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1;->val$jsScriptDelayMillis:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 162
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "WEB_VIEW"

    const-string v1, "removing the webview, not needed anyway."

    .line 164
    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {p0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const-string p0, "Android"

    .line 168
    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p0, "about:blank"

    .line 169
    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    const/4 p0, 0x0

    .line 171
    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 172
    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 173
    invoke-virtual {p1, p0}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 175
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :catch_0
    invoke-static {p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "BROADCAST_KEY"

    .line 144
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;

    .line 145
    invoke-static {}, Lcom/chlegou/bitbot/utils/BackgroundWebView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received broadcast with Key:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    return-void

    .line 152
    :cond_0
    sget-object v0, Lcom/chlegou/bitbot/utils/BackgroundWebView$2;->$SwitchMap$com$chlegou$bitbot$utils$BroadcastUtils$Key:[I

    invoke-virtual {p2}, Lcom/chlegou/bitbot/utils/BroadcastUtils$Key;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 156
    :cond_1
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iget-object v0, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1;->val$windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1;->val$webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v1, p1, p0}, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    iget-wide v0, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1;->val$jsScriptDelayMillis:J

    const-wide/16 v3, 0x1388

    add-long/2addr v0, v3

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
