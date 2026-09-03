.class Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$7;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;I)V
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

    .line 142
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$7;->this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$7;->this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->access$000(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$7;->this$0:Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;->access$000(Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter;)Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$7;->val$position:I

    invoke-interface {v0, p1, p0}, Lcn/nubia/redmagickyi/adapter/TechnologyCenterAdapter$TechnologyCenterInterface;->onTechnologyItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
