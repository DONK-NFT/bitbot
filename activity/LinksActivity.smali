.class public Lcom/chlegou/bitbot/activity/LinksActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LinksActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LinksActivity"


# instance fields
.field btnAdflyLinkLog:Lcom/google/android/material/button/MaterialButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b1
    .end annotation
.end field

.field btnDirectLinkLog:Lcom/google/android/material/button/MaterialButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a01b2
    .end annotation
.end field

.field btnFbAutoAccount:Lcom/google/android/material/button/MaterialButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0151
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/chlegou/bitbot/activity/LinksActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private testGettingAutoAccount()V
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/chlegou/bitbot/activity/LinksActivity$1;

    invoke-direct {v1, p0}, Lcom/chlegou/bitbot/activity/LinksActivity$1;-><init>(Lcom/chlegou/bitbot/activity/LinksActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "getReadableWorkerHistory :: "

    const-string v1, "getWorkerHistory :: "

    const-string v2, "isWorkerRunning :: "

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 54
    :sswitch_0
    sget-object p1, Lcom/chlegou/bitbot/activity/LinksActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showing DIRECT_LINK Log."

    invoke-static {p1, v3}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chlegou/bitbot/worker/DirectLinkWorker;->isWorkerRunning()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chlegou/bitbot/worker/DirectLinkWorker;->getWorkerHistory()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chlegou/bitbot/worker/DirectLinkWorker;->getReadableWorkerHistory()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :sswitch_1
    sget-object p1, Lcom/chlegou/bitbot/activity/LinksActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showing ADFLY Log."

    invoke-static {p1, v3}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chlegou/bitbot/worker/AdflyWorker;->isWorkerRunning()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chlegou/bitbot/worker/AdflyWorker;->getWorkerHistory()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/chlegou/bitbot/worker/AdflyWorker;->getReadableWorkerHistory()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :sswitch_2
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/LinksActivity;->testGettingAutoAccount()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0151 -> :sswitch_2
        0x7f0a01b1 -> :sswitch_1
        0x7f0a01b2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d001e

    .line 31
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/LinksActivity;->setContentView(I)V

    .line 32
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 34
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/LinksActivity;->btnAdflyLinkLog:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/LinksActivity;->btnDirectLinkLog:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/LinksActivity;->btnFbAutoAccount:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
