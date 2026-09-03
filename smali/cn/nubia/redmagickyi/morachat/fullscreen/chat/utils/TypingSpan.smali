.class public Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/TypingSpan;
.super Landroid/text/style/ReplacementSpan;
.source "TypingSpan.java"


# static fields
.field public static final FADE_DURATION:I = 0x190


# instance fields
.field private progress:F

.field private final textColor:I


# direct methods
.method public constructor <init>(FI)V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 14
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/TypingSpan;->progress:F

    .line 15
    iput p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/TypingSpan;->textColor:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 25
    invoke-interface {p2, p3, p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-virtual {p9}, Landroid/graphics/Paint;->getAlpha()I

    move-result p3

    .line 28
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColor()I

    move-result p4

    .line 30
    iget p6, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/TypingSpan;->textColor:I

    invoke-virtual {p9, p6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p6, p3

    .line 31
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/TypingSpan;->progress:F

    mul-float/2addr p6, p0

    float-to-int p0, p6

    invoke-virtual {p9, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float p0, p7

    .line 32
    invoke-virtual {p1, p2, p5, p0, p9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 34
    invoke-virtual {p9, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    invoke-virtual {p9, p4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 20
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public setProgress(F)V
    .locals 0

    .line 39
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/utils/TypingSpan;->progress:F

    return-void
.end method
