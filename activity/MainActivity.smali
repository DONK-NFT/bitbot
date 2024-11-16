.class public Lcom/chlegou/bitbot/activity/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final RC_SIGN_IN:I = 0x2329

.field private static final TAG:Ljava/lang/String; = "MainActivity"


# instance fields
.field private bottomAppBar:Lcom/google/android/material/bottomappbar/BottomAppBar;

.field btnGithub:Landroidx/appcompat/widget/AppCompatButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a009a
    .end annotation
.end field

.field btnSignIn:Lcom/google/android/material/button/MaterialButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00a3
    .end annotation
.end field

.field private googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private configureGoogleSignInClient()V
    .locals 2

    .line 119
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const-string v1, "20505846597-6n44qta53v70kogidosqm48vpvfrp501.apps.googleusercontent.com"

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestIdToken(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 123
    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/MainActivity;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    return-void
.end method

.method private firebaseAuthWithGoogle(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-static {p1, v0}, Lcom/google/firebase/auth/GoogleAuthProvider;->getCredential(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;

    move-result-object p1

    .line 226
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->signInWithCredential(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/chlegou/bitbot/activity/MainActivity;)V

    .line 227
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Landroid/app/Activity;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private handleGithubMajorVersion()V
    .locals 5

    .line 373
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    const-string v1, "APPLICATION_MAJOR_VERSION"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    new-instance v1, Lcom/g00fy2/versioncompare/Version;

    const-string v2, "1.6.4"

    invoke-direct {v1, v2}, Lcom/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/g00fy2/versioncompare/Version;->isLowerThan(Ljava/lang/String;)Z

    move-result v1

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "showGithubMajorVersion"

    invoke-static {v3, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0a01bd

    .line 377
    invoke-virtual {p0, v2}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "V%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a01be

    .line 378
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private handleGithubMinorVersion()Z
    .locals 3

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " testing firebase remote config fetches: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v1

    const-string v2, "TEST"

    invoke-virtual {v1, v2}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FIREBASE_MAIN_APP_ACTIVITY"

    invoke-static {v1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    const-string v1, "APPLICATION_MINOR_VERSION"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 363
    new-instance v1, Lcom/g00fy2/versioncompare/Version;

    const-string v2, "1.6.4"

    invoke-direct {v1, v2}, Lcom/g00fy2/versioncompare/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/g00fy2/versioncompare/Version;->isAtLeast(Ljava/lang/String;)Z

    move-result v0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isLatest"

    invoke-static {v2, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 366
    const-class v1, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/chlegou/bitbot/utils/Tools;->redirectToActivity(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_0
    return v0
.end method

.method private handleNewsBadge()V
    .locals 7

    .line 440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 441
    invoke-static {}, Lcom/chlegou/bitbot/utils/Tools;->getNotReadNewsCount()I

    move-result v0

    .line 442
    iget-object v1, p0, Lcom/chlegou/bitbot/activity/MainActivity;->bottomAppBar:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x7f0a017b

    if-lez v0, :cond_1

    .line 445
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 446
    instance-of v5, v4, Lcom/chlegou/bitbot/utils/CountDrawable;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/chlegou/bitbot/utils/CountDrawable;

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/chlegou/bitbot/utils/CountDrawable;

    invoke-direct {v4, p0}, Lcom/chlegou/bitbot/utils/CountDrawable;-><init>(Landroid/content/Context;)V

    .line 447
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    const-string v0, "%d"

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/chlegou/bitbot/utils/CountDrawable;->setCount(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 449
    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 451
    invoke-virtual {v1, v3, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private handleSignInResult(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 203
    :try_start_0
    const-class v1, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez p1, :cond_0

    .line 205
    invoke-direct {p0, v0}, Lcom/chlegou/bitbot/activity/MainActivity;->updateUIWithSignedInUser(Lcom/google/firebase/auth/FirebaseUser;)V

    const-string p1, "Account is null."

    .line 206
    invoke-static {p0, p1}, Lcom/chlegou/bitbot/utils/Tools;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 211
    :cond_0
    sget-object v1, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firebaseAuthWithGoogle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->firebaseAuthWithGoogle(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 216
    sget-object v1, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "signInResult:failed code= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignIn failed with code:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/chlegou/bitbot/utils/Tools;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v0}, Lcom/chlegou/bitbot/activity/MainActivity;->updateUIWithSignedInUser(Lcom/google/firebase/auth/FirebaseUser;)V

    :goto_0
    return-void
.end method

.method private initBottomAppBar()V
    .locals 3

    const v0, 0x7f0a0083

    .line 385
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomappbar/BottomAppBar;

    iput-object v0, p0, Lcom/chlegou/bitbot/activity/MainActivity;->bottomAppBar:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 386
    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0a00ea

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 387
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/MainActivity;->bottomAppBar:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/MainActivity;->bottomAppBar:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/MainActivity;->bottomAppBar:Lcom/google/android/material/bottomappbar/BottomAppBar;

    new-instance v1, Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/chlegou/bitbot/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v0, p0, Lcom/chlegou/bitbot/activity/MainActivity;->bottomAppBar:Lcom/google/android/material/bottomappbar/BottomAppBar;

    new-instance v1, Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/chlegou/bitbot/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method

.method private isUserEligibleToAccessApp()Z
    .locals 1

    .line 350
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$showAboutDialog$3(Landroid/content/DialogInterface;)V
    .locals 1

    .line 480
    sget-object p0, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "Dialog show."

    invoke-static {p0, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showAboutDialog$4(Landroid/content/DialogInterface;)V
    .locals 1

    .line 483
    sget-object p0, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "Dialog dismiss."

    invoke-static {p0, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showLoginDialog()V
    .locals 3

    .line 339
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1200ed

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12002f

    const/4 v2, 0x0

    .line 340
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    const v1, 0x102000b

    .line 343
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 344
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 345
    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    :cond_0
    return-void
.end method

.method private updateUIWithSignedInUser(Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7f0a01a9

    const/16 v2, 0x8

    const v3, 0x7f0a01a8

    if-nez p1, :cond_0

    .line 129
    invoke-virtual {p0, v3}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 133
    :cond_0
    invoke-virtual {p0, v3}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 135
    sget-object v0, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user account Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Landroid/net/Uri;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f08016c

    .line 139
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 140
    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    const v1, 0x7f0a0312

    .line 141
    invoke-virtual {p0, v1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    const v0, 0x7f0a0311

    .line 143
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a030f

    .line 144
    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$firebaseAuthWithGoogle$0$com-chlegou-bitbot-activity-MainActivity(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 228
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object p1, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "signInWithCredential:success"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p1

    .line 232
    invoke-direct {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->updateUIWithSignedInUser(Lcom/google/firebase/auth/FirebaseUser;)V

    .line 235
    invoke-static {}, Lcom/chlegou/bitbot/utils/FirebaseUtils;->fetchAndSaveFCMToken()V

    goto :goto_0

    .line 238
    :cond_0
    sget-object v0, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "signInWithCredential:failure :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 239
    invoke-direct {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->updateUIWithSignedInUser(Lcom/google/firebase/auth/FirebaseUser;)V

    const-string p1, "SignIn failed with Credential."

    .line 240
    invoke-static {p0, p1}, Lcom/chlegou/bitbot/utils/Tools;->showAlertDialog(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$initBottomAppBar$1$com-chlegou-bitbot-activity-MainActivity(Landroid/view/View;)V
    .locals 2

    .line 391
    new-instance p1, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;

    invoke-direct {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;-><init>()V

    .line 392
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/chlegou/bitbot/activity/BottomNavigationMenuFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initBottomAppBar$2$com-chlegou-bitbot-activity-MainActivity(Landroid/view/MenuItem;)Z
    .locals 0

    .line 395
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 417
    :sswitch_0
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToOfficialWebsite()V

    goto :goto_0

    .line 425
    :sswitch_1
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToUpdateActivity()V

    goto :goto_0

    .line 401
    :sswitch_2
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->showShareDialog()V

    goto :goto_0

    .line 413
    :sswitch_3
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToSettingsActivity()V

    goto :goto_0

    .line 405
    :sswitch_4
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToPlayStore()V

    goto :goto_0

    .line 397
    :sswitch_5
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToNewsActivity()V

    goto :goto_0

    .line 429
    :sswitch_6
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToLinksActivity()V

    goto :goto_0

    .line 421
    :sswitch_7
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->sendContactSupportEmail()V

    goto :goto_0

    .line 409
    :sswitch_8
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->showAboutDialog()V

    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0034 -> :sswitch_8
        0x7f0a003c -> :sswitch_7
        0x7f0a0042 -> :sswitch_6
        0x7f0a0049 -> :sswitch_5
        0x7f0a004a -> :sswitch_4
        0x7f0a004c -> :sswitch_3
        0x7f0a004d -> :sswitch_2
        0x7f0a004f -> :sswitch_1
        0x7f0a0050 -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 187
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    sget-object v0, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult:: requestCode:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult:: resultCode:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult:: data:: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x2329

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 195
    invoke-direct {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->handleSignInResult(Lcom/google/android/gms/tasks/Task;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const-string/jumbo v0, "sign out completed."

    const-string v1, "sclick:button-click"

    const/16 v2, 0x3e8

    .line 249
    invoke-static {v1, v2}, Lhk/ids/gws/android/sclick/SClick;->check(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_2

    .line 260
    :pswitch_0
    sget-object p1, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "Sign out."

    invoke-static {p1, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/chlegou/bitbot/utils/Tools;->isGooglePlayServicesAvailable()Z

    move-result v1

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGooglePlayServicesAvailable:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :try_start_0
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseAuth;->signOut()V

    if-eqz v1, :cond_1

    .line 266
    iget-object v1, p0, Lcom/chlegou/bitbot/activity/MainActivity;->googleSignInClient:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    :cond_1
    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_0
    invoke-direct {p0, v2}, Lcom/chlegou/bitbot/activity/MainActivity;->updateUIWithSignedInUser(Lcom/google/firebase/auth/FirebaseUser;)V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 269
    :try_start_1
    sget-object v1, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v3, "Exception in sign out."

    invoke-static {v1, v3}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    invoke-static {v1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0, v2}, Lcom/chlegou/bitbot/activity/MainActivity;->updateUIWithSignedInUser(Lcom/google/firebase/auth/FirebaseUser;)V

    .line 274
    throw p1

    .line 255
    :pswitch_1
    sget-object p1, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "Redirect to auth activity."

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-class p1, Lcom/chlegou/bitbot/activity/AuthActivity;

    invoke-static {p0, p1, v1, v2}, Lcom/chlegou/bitbot/utils/Tools;->redirectToActivity(Landroid/content/Context;Ljava/lang/Class;ZLandroid/os/Bundle;)V

    goto :goto_2

    .line 331
    :pswitch_2
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToOfficialWebsite()V

    goto :goto_2

    :pswitch_3
    const-string p1, "https://370.go.qureka.com/"

    .line 323
    invoke-static {p0, p1}, Lcom/chlegou/bitbot/utils/CustomTabs;->openTabIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    const-string p1, "https://370.go.predchamp.com/"

    .line 327
    invoke-static {p0, p1}, Lcom/chlegou/bitbot/utils/CustomTabs;->openTabIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    const-string p1, "http://491.go.mglgamez.com/"

    .line 319
    invoke-static {p0, p1}, Lcom/chlegou/bitbot/utils/CustomTabs;->openTabIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 311
    :pswitch_6
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToGamezop()V

    goto :goto_2

    .line 315
    :pswitch_7
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->redirectToAtmegame()V

    goto :goto_2

    .line 306
    :pswitch_8
    sget-object p1, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "Redirect To BitList"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "https://bitlist.plus"

    .line 307
    invoke-static {p0, p1}, Lcom/chlegou/bitbot/utils/CustomTabs;->openTabIntent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 278
    :pswitch_9
    sget-object p1, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "Redirect To BitBot Web App"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "https://my.bitbot.plus"

    .line 279
    invoke-static {p0, p1}, Lcom/chlegou/bitbot/utils/Tools;->openURLInPreferredNavigator(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 283
    :pswitch_a
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/chlegou/bitbot/utils/PermissionUtils;->isOverlayPermissionGranted(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 284
    invoke-static {p0}, Lcom/chlegou/bitbot/utils/PermissionUtils;->requestOverlayPermissionIfNotGranted(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void

    .line 287
    :cond_2
    invoke-static {p0}, Lcom/chlegou/bitbot/utils/PermissionUtils;->isBackgroundDataRestricted(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 288
    invoke-static {p0}, Lcom/chlegou/bitbot/utils/PermissionUtils;->requestIgnoreBackgroundDataRestrictionsSettings(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void

    .line 292
    :cond_3
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->isUserEligibleToAccessApp()Z

    move-result p1

    if-nez p1, :cond_4

    .line 293
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->showLoginDialog()V

    return-void

    .line 298
    :cond_4
    invoke-static {}, Lcom/chlegou/bitbot/utils/FirebaseUtils;->fetchAndSaveFCMToken()V

    .line 300
    sget-object p1, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v0, "Redirect to freebitcoin accounts auto"

    invoke-static {p1, v0}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-class p1, Lcom/chlegou/bitbot/activity/FreeBitcoinAccountsActivity;

    invoke-static {p0, p1, v1, v2}, Lcom/chlegou/bitbot/utils/Tools;->redirectToActivity(Landroid/content/Context;Ljava/lang/Class;ZLandroid/os/Bundle;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0090
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a0095
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0a00a3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0020

    .line 82
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->setContentView(I)V

    .line 83
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 85
    invoke-static {}, Lcom/chlegou/bitbot/utils/FirebaseRemoteConfigInitiator;->remoteFetch()V

    .line 87
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    const v0, 0x7f080156

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    const v0, 0x7f0a01bb

    invoke-virtual {p0, v0}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 89
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity;->btnGithub:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object p1

    const v0, 0x7f080158

    .line 91
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 92
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 93
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 94
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/chlegou/bitbot/activity/MainActivity;->btnGithub:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/PicassoUtils;->buildTargetForAppCompatButton(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatButton;)Lcom/squareup/picasso/Target;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    .line 95
    iget-object p1, p0, Lcom/chlegou/bitbot/activity/MainActivity;->btnSignIn:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0092

    .line 97
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0096

    .line 98
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0095

    .line 99
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0097

    .line 100
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0099

    .line 101
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0098

    .line 102
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00a4

    .line 103
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0091

    .line 104
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0090

    .line 105
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0223

    .line 108
    invoke-virtual {p0, p1}, Lcom/chlegou/bitbot/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/chlegou/bitbot/utils/Tools;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->initBottomAppBar()V

    .line 111
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->handleGithubMinorVersion()Z

    .line 112
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->handleGithubMajorVersion()V

    .line 114
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->configureGoogleSignInClient()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 181
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 182
    sget-object v0, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 163
    sget-object v0, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 172
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 173
    sget-object v0, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 151
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 152
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->handleGithubMinorVersion()Z

    .line 153
    invoke-direct {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->handleNewsBadge()V

    .line 154
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    .line 155
    invoke-direct {p0, v0}, Lcom/chlegou/bitbot/activity/MainActivity;->updateUIWithSignedInUser(Lcom/google/firebase/auth/FirebaseUser;)V

    return-void
.end method

.method public redirectToAtmegame()V
    .locals 2

    .line 593
    sget-object v0, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "Redirect To Atmegame"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "https://www.atmegame.com/?utm_source=chlegou&utm_medium=chlegou"

    .line 596
    invoke-static {p0, v0}, Lcom/chlegou/bitbot/utils/CustomTabs;->openTabIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public redirectToGamezop()V
    .locals 3

    .line 583
    sget-object v0, Lcom/chlegou/bitbot/activity/MainActivity;->TAG:Ljava/lang/String;

    const-string v1, "Redirect To Gamezop"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getCurrentUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v0

    const-string v1, "https://www.gamezop.com/?id=zfUHW8jIU&sub=%SUB%"

    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 587
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v2, "%SUB%"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 589
    :cond_0
    invoke-static {p0, v1}, Lcom/chlegou/bitbot/utils/CustomTabs;->openTabIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public redirectToLinksActivity()V
    .locals 4

    .line 573
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Redirect To links activity"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/chlegou/bitbot/activity/LinksActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/chlegou/bitbot/utils/Tools;->redirectToActivity(Landroid/content/Context;Ljava/lang/Class;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public redirectToNewsActivity()V
    .locals 4

    .line 568
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Redirect To news activity"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/chlegou/bitbot/activity/NewsActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/chlegou/bitbot/utils/Tools;->redirectToActivity(Landroid/content/Context;Ljava/lang/Class;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public redirectToOfficialWebsite()V
    .locals 2

    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Redirect To official website"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "https://bitbot.plus"

    .line 579
    invoke-static {p0, v0}, Lcom/chlegou/bitbot/utils/CustomTabs;->openTabIntent(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public redirectToPlayStore()V
    .locals 2

    .line 468
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Redirect To play store"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1200ee

    .line 469
    invoke-static {v0}, Lcom/chlegou/bitbot/utils/Tools;->showUIFeedback(I)V

    .line 470
    invoke-static {}, Lcom/chlegou/bitbot/utils/Tools;->launchPlayStoreIntent()V

    return-void
.end method

.method public redirectToSettingsActivity()V
    .locals 4

    .line 547
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Redirect To settings activity"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/chlegou/bitbot/activity/SettingsActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/chlegou/bitbot/utils/Tools;->redirectToActivity(Landroid/content/Context;Ljava/lang/Class;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public redirectToUpdateActivity()V
    .locals 4

    .line 563
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Redirect To update activity"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-virtual {p0}, Lcom/chlegou/bitbot/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/chlegou/bitbot/activity/UpdateLauncherActivity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/chlegou/bitbot/utils/Tools;->redirectToActivity(Landroid/content/Context;Ljava/lang/Class;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public sendContactSupportEmail()V
    .locals 4

    .line 553
    sget-object v0, Lcom/chlegou/bitbot/utils/Constants;->CONTACT_TITLE:Ljava/lang/String;

    sget-object v1, Lcom/chlegou/bitbot/utils/Constants;->CONTACT_EMAIL:Ljava/lang/String;

    sget-object v2, Lcom/chlegou/bitbot/utils/Constants;->CONTACT_SUBJECT:Ljava/lang/String;

    .line 558
    invoke-static {}, Lcom/chlegou/bitbot/utils/Constants;->getContactTextContent()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-static {p0, v0, v1, v2, v3}, Lcom/chlegou/bitbot/utils/Tools;->sendEmailViaShareCompactChooser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showAboutDialog()V
    .locals 6

    .line 475
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f130008

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/16 v1, 0xd

    .line 476
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    const v1, 0x7f0d0037

    .line 477
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    const/4 v1, 0x1

    .line 478
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 479
    sget-object v2, Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 482
    sget-object v2, Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/chlegou/bitbot/activity/MainActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 486
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 487
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 v3, -0x1

    .line 488
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 489
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const v3, 0x7f0a006c

    .line 491
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "1.6.4"

    aput-object v5, v1, v4

    const-string v4, "V%s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a008d

    .line 493
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/chlegou/bitbot/activity/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/chlegou/bitbot/activity/MainActivity$1;-><init>(Lcom/chlegou/bitbot/activity/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a008e

    .line 500
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/chlegou/bitbot/activity/MainActivity$2;

    invoke-direct {v3, p0}, Lcom/chlegou/bitbot/activity/MainActivity$2;-><init>(Lcom/chlegou/bitbot/activity/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a031f

    .line 507
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/chlegou/bitbot/activity/MainActivity$3;

    invoke-direct {v3, p0, p0}, Lcom/chlegou/bitbot/activity/MainActivity$3;-><init>(Lcom/chlegou/bitbot/activity/MainActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0249

    .line 513
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/chlegou/bitbot/activity/MainActivity$4;

    invoke-direct {v3, p0, p0}, Lcom/chlegou/bitbot/activity/MainActivity$4;-><init>(Lcom/chlegou/bitbot/activity/MainActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a02de

    .line 519
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/chlegou/bitbot/activity/MainActivity$5;

    invoke-direct {v3, p0, p0}, Lcom/chlegou/bitbot/activity/MainActivity$5;-><init>(Lcom/chlegou/bitbot/activity/MainActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0093

    .line 526
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/chlegou/bitbot/activity/MainActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/chlegou/bitbot/activity/MainActivity$6;-><init>(Lcom/chlegou/bitbot/activity/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0094

    .line 533
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Lcom/chlegou/bitbot/activity/MainActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/chlegou/bitbot/activity/MainActivity$7;-><init>(Lcom/chlegou/bitbot/activity/MainActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 542
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public showShareDialog()V
    .locals 3

    .line 458
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Showing Share Dialog"

    invoke-static {v0, v1}, Lcom/chlegou/bitbot/utils/AppLog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    sget-object v0, Lcom/chlegou/bitbot/utils/Constants;->SHARE_APP_TITLE:Ljava/lang/String;

    sget-object v1, Lcom/chlegou/bitbot/utils/Constants;->SHARE_APP_SUBJECT:Ljava/lang/String;

    sget-object v2, Lcom/chlegou/bitbot/utils/Constants;->SHARE_APP_TEXT:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/chlegou/bitbot/utils/Tools;->shareTextViaShareCompactChooser(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
