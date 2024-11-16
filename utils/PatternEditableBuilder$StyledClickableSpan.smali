.class public Lcom/chlegou/bitbot/utils/PatternEditableBuilder$StyledClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "PatternEditableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chlegou/bitbot/utils/PatternEditableBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StyledClickableSpan"
.end annotation


# instance fields
.field item:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;

.field final synthetic this$0:Lcom/chlegou/bitbot/utils/PatternEditableBuilder;


# direct methods
.method public constructor <init>(Lcom/chlegou/bitbot/utils/PatternEditableBuilder;Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$StyledClickableSpan;->this$0:Lcom/chlegou/bitbot/utils/PatternEditableBuilder;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$StyledClickableSpan;->item:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$StyledClickableSpan;->item:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;->listener:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;

    if-eqz v0, :cond_0

    .line 106
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 107
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 108
    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 109
    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 110
    invoke-interface {v0, v1, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$StyledClickableSpan;->item:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;

    iget-object v1, v1, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;->listener:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableClickedListener;->onSpanClicked(Ljava/lang/String;)V

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$StyledClickableSpan;->item:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;->styles:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$StyledClickableSpan;->item:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;

    iget-object v0, v0, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannablePatternItem;->styles:Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;

    invoke-virtual {v0, p1}, Lcom/chlegou/bitbot/utils/PatternEditableBuilder$SpannableStyleListener;->onSpanStyled(Landroid/text/TextPaint;)V

    .line 100
    :cond_0
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method
