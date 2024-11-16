.class public final synthetic Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/WindowManager;

.field public final synthetic f$1:Landroid/webkit/WebView;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/content/BroadcastReceiver;


# direct methods
.method public synthetic constructor <init>(Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1$$ExternalSyntheticLambda0;->f$1:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1$$ExternalSyntheticLambda0;->f$3:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1$$ExternalSyntheticLambda0;->f$0:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1$$ExternalSyntheticLambda0;->f$1:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    iget-object v3, p0, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1$$ExternalSyntheticLambda0;->f$3:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1, v2, v3}, Lcom/chlegou/bitbot/utils/BackgroundWebView$1$1;->lambda$onReceive$0(Landroid/view/WindowManager;Landroid/webkit/WebView;Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
