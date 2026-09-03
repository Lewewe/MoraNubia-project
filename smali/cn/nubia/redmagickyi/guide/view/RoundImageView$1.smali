.class Lcn/nubia/redmagickyi/guide/view/RoundImageView$1;
.super Landroid/view/ViewOutlineProvider;
.source "RoundImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guide/view/RoundImageView;->setmRadius(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/view/RoundImageView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/view/RoundImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView$1;->this$0:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView$1;->this$0:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->getWidth()I

    move-result v3

    .line 75
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView$1;->this$0:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->getHeight()I

    move-result v4

    .line 76
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/view/RoundImageView$1;->this$0:Lcn/nubia/redmagickyi/guide/view/RoundImageView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/view/RoundImageView;->access$000(Lcn/nubia/redmagickyi/guide/view/RoundImageView;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
