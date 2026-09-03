.class Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$1;
.super Ljava/lang/Object;
.source "BaseSkinAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/skin/viewholder/SkinViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;I)V
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

    .line 171
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$1;->this$0:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 174
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$1;->this$0:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->itemClickInterface:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$SkinItemClickInterface;

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$1;->this$0:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter;->itemClickInterface:Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$SkinItemClickInterface;

    iget p0, p0, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$1;->val$position:I

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/skin/adapter/BaseSkinAdapter$SkinItemClickInterface;->onSkinIntemClick(I)V

    :cond_0
    return-void
.end method
