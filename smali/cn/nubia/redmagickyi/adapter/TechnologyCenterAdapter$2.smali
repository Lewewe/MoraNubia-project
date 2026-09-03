.class Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$2;
.super Ljava/lang/Object;
.source "TechnologyCenterAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$bean:Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$2;->this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$2;->val$bean:Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    iput p3, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$2;->val$bean:Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$2;->this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->access$000(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$2;->this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->access$000(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;

    move-result-object v0

    check-cast p1, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    iget p0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$2;->val$position:I

    invoke-interface {v0, p1, p0, p2}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;->onSwitchCheckClick(Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;IZ)V

    :cond_0
    return-void
.end method
