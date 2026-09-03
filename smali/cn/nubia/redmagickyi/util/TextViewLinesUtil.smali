.class public Lcn/nubia/redmagickyi/util/TextViewLinesUtil;
.super Ljava/lang/Object;
.source "TextViewLinesUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextViewHeight(Landroid/widget/TextView;Ljava/lang/String;I)I
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, -0x80000000

    .line 15
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 p2, 0x0

    .line 16
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 17
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->measure(II)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p0

    return p0
.end method
