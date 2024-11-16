.class public abstract Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;
.super Ljava/lang/Object;
.source "PatternEditableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chlegou/bitbot/utils/PatternEditableBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpannableStyleListener"
.end annotation


# instance fields
.field public spanTextColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;->spanTextColor:I

    return-void
.end method


# virtual methods
.method abstract onSpanStyled(Landroid/text/TextPaint;)V
.end method
