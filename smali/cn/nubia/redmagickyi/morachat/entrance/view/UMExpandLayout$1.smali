.class Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout$1;
.super Ljava/lang/Object;
.source "UMExpandLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->animateToggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 59
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    float-to-int v1, p1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->access$000(Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;I)V

    .line 61
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout$1;->this$0:Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;

    invoke-static {p0}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->access$100(Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/entrance/view/UMExpandLayout;->setAlpha(F)V

    return-void
.end method
