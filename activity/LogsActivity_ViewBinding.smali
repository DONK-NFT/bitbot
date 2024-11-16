.class public Lcom/chlegou/bitbot/activity/LogsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LogsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/chlegou/bitbot/activity/LogsActivity;


# direct methods
.method public constructor <init>(Lcom/chlegou/bitbot/activity/LogsActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/LogsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/chlegou/bitbot/activity/LogsActivity_ViewBinding;-><init>(Lcom/chlegou/bitbot/activity/LogsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/chlegou/bitbot/activity/LogsActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/LogsActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/LogsActivity;

    .line 28
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a01b9

    const-string v2, "field \'recyclerViewLogsList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/LogsActivity;->recyclerViewLogsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 29
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a010e

    const-string v2, "field \'emptyView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/chlegou/bitbot/activity/LogsActivity;->emptyView:Landroid/widget/RelativeLayout;

    .line 30
    const-class v0, Landroidx/appcompat/widget/LinearLayoutCompat;

    const v1, 0x7f0a0053

    const-string v2, "field \'adContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/LinearLayoutCompat;

    iput-object p2, p1, Lcom/chlegou/bitbot/activity/LogsActivity;->adContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/LogsActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/LogsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/chlegou/bitbot/activity/LogsActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/LogsActivity;

    .line 40
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/LogsActivity;->recyclerViewLogsList:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/LogsActivity;->emptyView:Landroid/widget/RelativeLayout;

    .line 42
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/LogsActivity;->adContainer:Landroidx/appcompat/widget/LinearLayoutCompat;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
