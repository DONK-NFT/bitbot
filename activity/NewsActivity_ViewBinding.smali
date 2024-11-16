.class public Lcom/chlegou/bitbot/activity/NewsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NewsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/chlegou/bitbot/activity/NewsActivity;


# direct methods
.method public constructor <init>(Lcom/chlegou/bitbot/activity/NewsActivity;)V
    .locals 1

    .line 19
    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/NewsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/chlegou/bitbot/activity/NewsActivity_ViewBinding;-><init>(Lcom/chlegou/bitbot/activity/NewsActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/chlegou/bitbot/activity/NewsActivity;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/chlegou/bitbot/activity/NewsActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/NewsActivity;

    .line 26
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a021a

    const-string v2, "field \'recyclerViewNewsList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/chlegou/bitbot/activity/NewsActivity;->recyclerViewNewsList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/NewsActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/NewsActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 34
    iput-object v1, p0, Lcom/chlegou/bitbot/activity/NewsActivity_ViewBinding;->target:Lcom/chlegou/bitbot/activity/NewsActivity;

    .line 36
    iput-object v1, v0, Lcom/chlegou/bitbot/activity/NewsActivity;->recyclerViewNewsList:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
