.class Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$4;
.super Ljava/lang/Object;
.source "TechnologyCenterAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

.field final synthetic val$holder:Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$4;->this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$4;->val$holder:Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 122
    iget-object p1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$4;->val$holder:Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;

    iget-object p1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->cbFunctionEnable:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setPressing(Z)V

    .line 123
    iget-object p1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$4;->val$holder:Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;

    iget-object p1, p1, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->cbFunctionEnable:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    iget-object p0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$4;->val$holder:Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;

    iget-object p0, p0, Lcn/nubia/redmagickyi/viewholder/TechnologyCenterViewHolder;->cbFunctionEnable:Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->isChecked()Z

    move-result p0

    xor-int/2addr p0, v0

    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;->setChecked(Z)V

    return-void
.end method
