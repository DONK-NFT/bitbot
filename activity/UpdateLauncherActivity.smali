.class public Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "UpdateLauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnGithub:Landroidx/appcompat/widget/AppCompatButton;

.field private btnGooglePlay:Landroidx/appcompat/widget/AppCompatButton;

.field private btnWebsite:Landroidx/appcompat/widget/AppCompatButton;

.field private relaunch:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private initComponent()V
    .locals 1

    const v0, 0x7f0a031f

    .line 46
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->btnWebsite:Landroidx/appcompat/widget/AppCompatButton;

    .line 47
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a009b

    .line 48
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->btnGooglePlay:Landroidx/appcompat/widget/AppCompatButton;

    .line 49
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a009a

    .line 50
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->btnGithub:Landroidx/appcompat/widget/AppCompatButton;

    .line 51
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0254

    .line 52
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->relaunch:Lcom/google/android/material/button/MaterialButton;

    .line 53
    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "https://bitbot.plus"

    .line 62
#   invoke-static {p1}, Lcom/chlegou/bitbot/utils/Tools;->launchURLIntent(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :sswitch_1
    const-class p1, Lcom/chlegou/bitbot/activity/MainActivity;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/chlegou/bitbot/utils/Tools;->redirectToActivity(Landroid/content/Context;Ljava/lang/Class;ZLandroid/os/Bundle;)V

    goto :goto_0

    .line 67
    :sswitch_2
#   invoke-static {}, Lcom/chlegou/bitbot/utils/Tools;->launchPlayStoreIntent()V

    goto :goto_0

    :sswitch_3
#   const-string p1, "https://chlegou.github.io/download_latest/chlegou/bitbot/"

    .line 72
    invoke-static {p1}, Lcom/chlegou/bitbot/utils/Tools;->launchURLIntent(Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a009a -> :sswitch_3
        0x7f0a009b -> :sswitch_2
        0x7f0a0254 -> :sswitch_1
        0x7f0a031f -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0023

    .line 26
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->initComponent()V

    .line 32
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    const v0, 0x7f080158

    .line 33
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 34
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 35
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->btnGithub:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/PicassoUtils;->buildTargetForAppCompatButton(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatButton;)Lcom/squareup/picasso/Target;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    .line 37
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    const v0, 0x7f080159

    .line 38
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 40
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;->btnGooglePlay:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/PicassoUtils;->buildTargetForAppCompatButton(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatButton;)Lcom/squareup/picasso/Target;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    return-void
.end method
