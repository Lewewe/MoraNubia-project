.class Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$2;
.super Ljava/lang/Object;
.source "RedmagicSupportAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicSupportViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

.field final synthetic val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;I)V
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

    .line 70
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$2;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$2;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    iput p3, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$2;->val$bean:Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;

    invoke-virtual {v0, p2}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->setGameChecked(Z)V

    .line 74
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$2;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->access$100(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$2;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;->access$100(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$2;->val$position:I

    invoke-interface {v0, p1, p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicSupportAdapter$RedmagicSupportInterface;->onSupportGameCheckedChanged(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method
