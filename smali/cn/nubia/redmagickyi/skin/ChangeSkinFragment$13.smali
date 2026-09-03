.class Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$13;
.super Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;
.source "ChangeSkinFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->updateUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 770
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$13;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-direct {p0, p2, p3}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getCenterItemPosition()I
    .locals 0

    .line 773
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment$13;->this$0:Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;->access$300(Lcn/nubia/redmagickyi/skin/ChangeSkinFragment;)Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->getPreviewPos()I

    move-result p0

    return p0
.end method
