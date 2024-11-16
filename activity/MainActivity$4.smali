.class Lcom/chlegou/bitbot/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chlegou/bitbot/activity/MainActivity;->showAboutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chlegou/bitbot/activity/MainActivity;

.field final synthetic val$thisActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/chlegou/bitbot/activity/MainActivity;Landroid/app/Activity;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity$4;->this$0:Lcom/chlegou/bitbot/activity/MainActivity;

    iput-object p2, p0, Lcom/chlegou/bitbot/activity/MainActivity$4;->val$thisActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 516
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity$4;->val$thisActivity:Landroid/app/Activity;

    const-string v0, "https://bitbot.plus/privacy.html"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/CustomTabs;->openTabIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
