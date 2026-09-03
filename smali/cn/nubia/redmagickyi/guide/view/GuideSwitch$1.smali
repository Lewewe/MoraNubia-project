.class Lcn/nubia/redmagickyi/guide/view/GuideSwitch$1;
.super Landroid/util/FloatProperty;
.source "GuideSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/guide/view/GuideSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcn/nubia/redmagickyi/guide/view/GuideSwitch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 246
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;)Ljava/lang/Float;
    .locals 0

    .line 249
    invoke-static {p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->access$000(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 246
    check-cast p1, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch$1;->get(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;F)V
    .locals 0

    .line 254
    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;->access$100(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 246
    check-cast p1, Lcn/nubia/redmagickyi/guide/view/GuideSwitch;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/guide/view/GuideSwitch$1;->setValue(Lcn/nubia/redmagickyi/guide/view/GuideSwitch;F)V

    return-void
.end method
