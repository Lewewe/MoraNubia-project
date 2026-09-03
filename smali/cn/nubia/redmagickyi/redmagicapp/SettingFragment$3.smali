.class Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$3;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->initView(Landroid/view/View;)V
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

    .line 134
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 137
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;->access$102(Lcn/nubia/redmagickyi/redmagicapp/SettingFragment;Z)Z

    return p1
.end method
