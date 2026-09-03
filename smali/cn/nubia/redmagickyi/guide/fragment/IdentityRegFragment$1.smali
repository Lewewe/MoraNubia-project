.class Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment$1;
.super Ljava/lang/Object;
.source "IdentityRegFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment$1;->this$0:Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment$1;->this$0:Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;

    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->access$000(Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCheckedChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->student:I

    const-string v0, "user_type"

    if-ne p2, p1, :cond_0

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment$1;->this$0:Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->access$100(Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    sget p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STUDENT:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_0
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->starff:I

    if-ne p2, p1, :cond_1

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment$1;->this$0:Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->access$100(Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    sget p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->STARFF_MEMBER:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    :cond_1
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->secret:I

    if-ne p2, p1, :cond_2

    .line 101
    iget-object p0, p0, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment$1;->this$0:Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;

    invoke-static {p0}, Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;->access$100(Lcn/nubia/redmagickyi/guide/fragment/IdentityRegFragment;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    sget p0, Lcn/nubia/redmagickyi/database/RedmagicCareManager;->SECRET:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->UpdateSettingdataBySql(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
