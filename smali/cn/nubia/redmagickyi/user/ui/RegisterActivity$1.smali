.class Lcn/nubia/redmagickyi/user/ui/RegisterActivity$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/user/ui/RegisterActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/user/ui/RegisterActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcn/nubia/redmagickyi/user/ui/RegisterActivity$1;->this$0:Lcn/nubia/redmagickyi/user/ui/RegisterActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/user/ui/RegisterActivity;->access$000(Lcn/nubia/redmagickyi/user/ui/RegisterActivity;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
