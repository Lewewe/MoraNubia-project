.class Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$1;
.super Ljava/lang/Object;
.source "TechnologyCenterAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$1;->this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$1;->val$bean:Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    iput p3, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$1;->this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->access$000(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$1;->this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->access$000(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;

    move-result-object v0

    check-cast p1, Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;

    iget-object v1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$1;->val$bean:Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->getType()I

    move-result v1

    iget p0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1, p2, p0}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;->onSwitchCheckTouch(Lcn/nubia/redmagickyi/view/RedmagicKyiCheckBox;ILandroid/view/MotionEvent;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
