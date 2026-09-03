.class Lcn/nubia/redmagickyi/view/StrokeTextView$StrokeTextPaint;
.super Landroid/text/TextPaint;
.source "StrokeTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/StrokeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StrokeTextPaint"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/StrokeTextView;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/view/StrokeTextView;Landroid/graphics/Paint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/StrokeTextView$StrokeTextPaint;->this$0:Lcn/nubia/redmagickyi/view/StrokeTextView;

    .line 222
    invoke-direct {p0}, Landroid/text/TextPaint;-><init>()V

    .line 223
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/view/StrokeTextView$StrokeTextPaint;->set(Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 0

    return-void
.end method

.method public setRealColor(I)V
    .locals 0

    .line 232
    invoke-super {p0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
