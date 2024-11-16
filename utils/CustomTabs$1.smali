.class Lcom/chlegou/bitbot/utils/CustomTabs$1;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "CustomTabs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/utils/CustomTabs;->initServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 40
    new-instance p1, Landroidx/browser/customtabs/CustomTabsCallback;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    invoke-virtual {p2, p1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p1

    invoke-static {p1}, Lcom/chlegou/bitbot/utils/CustomTabs;->access$002(Landroidx/browser/customtabs/CustomTabsSession;)Landroidx/browser/customtabs/CustomTabsSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
