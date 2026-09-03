.class Lcn/nubia/redmagickyi/adapter/EmailAdapter$1;
.super Ljava/lang/Object;
.source "EmailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/adapter/EmailAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/viewholder/EmailViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/adapter/EmailAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/adapter/EmailAdapter;I)V
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

    .line 69
    iput-object p1, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter$1;->this$0:Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter$1;->this$0:Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    iget v1, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter$1;->val$position:I

    iput v1, v0, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->selectPosition:I

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter$1;->this$0:Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->access$000(Lcn/nubia/redmagickyi/adapter/EmailAdapter;)Lcn/nubia/redmagickyi/adapter/EmailAdapter$EmailClickInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter$1;->this$0:Lcn/nubia/redmagickyi/adapter/EmailAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/adapter/EmailAdapter;->access$000(Lcn/nubia/redmagickyi/adapter/EmailAdapter;)Lcn/nubia/redmagickyi/adapter/EmailAdapter$EmailClickInterface;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/adapter/EmailAdapter$1;->val$position:I

    invoke-interface {v0, p1, p0}, Lcn/nubia/redmagickyi/adapter/EmailAdapter$EmailClickInterface;->onEmailItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
