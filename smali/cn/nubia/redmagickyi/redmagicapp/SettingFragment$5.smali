.class Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$5;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Lcn/nubia/redmagickyi/redmagicapp/SettingsBirthdaySelectDialog$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Ljava/lang/String;)V
    .locals 0

    .line 354
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$5;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->initUserBirthData()V

    return-void
.end method
