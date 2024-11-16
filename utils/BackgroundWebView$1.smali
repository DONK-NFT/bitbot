.class Lcom/chlegou/bitbot/utils/BackgroundWebView$1;
.super Landroid/os/Handler;
.source "BackgroundWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/BackgroundWebView;->open(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0

    .line 49
    iput-object p2, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v8, p0

    const-string v1, "adding web view to window manager"

    .line 54
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "URL"

    const-string v3, "about:blank"

    .line 55
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "JS_SCRIPT"

    const/4 v3, 0x0

    .line 56
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "JS_SCRIPT_DELAY_MILLIS"

    const-wide/16 v4, 0x3e8

    .line 57
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v2, "PROVIDER_NAME"

    const-string v4, ""

    .line 58
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/chlegou/bitbot/utils/BackgroundWebView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting WEB_VIEW with url :: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v0, v2, :cond_0

    const/16 v0, 0x7d2

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d5

    .line 71
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_1

    const/16 v0, 0x7f6

    const/16 v15, 0x7f6

    goto :goto_1

    :cond_1
    move v15, v0

    .line 73
    :goto_1
    invoke-static {}, Lcom/chlegou/bitbot/utils/BackgroundWebView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layoutType , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, v8, Lcom/chlegou/bitbot/utils/BackgroundWebView$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 75
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/16 v16, 0x18

    const/16 v17, -0x2

    move-object v12, v2

    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v4, 0x800033

    .line 83
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x0

    .line 85
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 86
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v4, -0x1

    .line 87
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 88
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, 0x0

    .line 89
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 96
    :try_start_0
    new-instance v12, Landroid/webkit/WebView;

    iget-object v4, v8, Lcom/chlegou/bitbot/utils/BackgroundWebView$1;->val$context:Landroid/content/Context;

    invoke-direct {v12, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 103
    :try_start_1
    invoke-interface {v0, v12, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_2
    invoke-static {}, Lcom/chlegou/bitbot/utils/BackgroundWebView;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 105
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/chlegou/bitbot/utils/BackgroundWebView;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "exception when adding web view to window manager"

    invoke-static {v2, v4}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 107
    :goto_3
    invoke-static {}, Lcom/chlegou/bitbot/utils/BackgroundWebView;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    throw v0

    .line 110
    :cond_2
    invoke-static {}, Lcom/chlegou/bitbot/utils/BackgroundWebView;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unable to add web view to window manager"

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const/4 v4, 0x1

    if-lt v1, v2, :cond_3

    .line 120
    invoke-virtual {v12, v4, v3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 124
    :cond_3
    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 127
    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 132
    invoke-virtual {v12}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 136
    invoke-virtual {v12}, Landroid/webkit/WebView;->onResume()V

    .line 137
    invoke-virtual {v12}, Landroid/webkit/WebView;->resumeTimers()V

    .line 140
    new-instance v13, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v12

    move-wide v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1;-><init>(Lcom/chlegou/bitbot/utils/BackgroundWebView$1;Landroid/view/WindowManager;Landroid/webkit/WebView;J)V

    .line 194
    invoke-virtual {v13}, Landroid/content/BroadcastReceiver;->clearAbortBroadcast()V

    .line 198
    iget-object v1, v8, Lcom/chlegou/bitbot/utils/BackgroundWebView$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "BROADCAST_INTENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 201
    new-instance v13, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v5, v7

    move-wide v6, v10

    invoke-direct/range {v1 .. v7}, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$2;-><init>(Lcom/chlegou/bitbot/utils/BackgroundWebView$1;Landroid/view/WindowManager;Landroid/webkit/WebView;Ljava/lang/String;J)V

    invoke-virtual {v12, v13}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 271
    invoke-virtual {v12, v9}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :catch_1
    return-void
.end method
