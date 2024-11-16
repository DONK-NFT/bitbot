.class public Lcom/chlegou/bitbot/activity/SettingsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SettingsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/chlegou/bitbot/activity/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/chlegou/bitbot/activity/SettingsActivity;)V
    .locals 1

    .line 19
    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/chlegou/bitbot/activity/SettingsActivity_ViewBinding;-><init>(Lcom/chlegou/bitbot/activity/SettingsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/chlegou/bitbot/activity/SettingsActivity;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/SettingsActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/SettingsActivity;

    .line 26
    const-class v0, Landroidx/appcompat/widget/SwitchCompat;

    const v1, 0x7f0a0283

    const-string v2, "field \'notification\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/SettingsActivity;->notification:Landroidx/appcompat/widget/SwitchCompat;

    .line 27
    const-class v0, Landroidx/appcompat/widget/SwitchCompat;

    const v1, 0x7f0a0285

    const-string v2, "field \'notificationVibrate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/SettingsActivity;->notificationVibrate:Landroidx/appcompat/widget/SwitchCompat;

    .line 28
    const-class v0, Landroidx/appcompat/widget/SwitchCompat;

    const v1, 0x7f0a0284

    const-string v2, "field \'notificationSound\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p2, p1, Lcom/chlegou/bitbot/activity/SettingsActivity;->notificationSound:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/SettingsActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/SettingsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/chlegou/bitbot/activity/SettingsActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/SettingsActivity;

    .line 38
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/SettingsActivity;->notification:Landroidx/appcompat/widget/SwitchCompat;

    .line 39
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/SettingsActivity;->notificationVibrate:Landroidx/appcompat/widget/SwitchCompat;

    .line 40
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/SettingsActivity;->notificationSound:Landroidx/appcompat/widget/SwitchCompat;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
