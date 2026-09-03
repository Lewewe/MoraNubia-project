.class Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch$1;
.super Landroid/util/FloatProperty;
.source "RedmagicKyiSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 253
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch;)Ljava/lang/Float;
    .locals 0

    .line 256
    invoke-static {p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch;->access$000(Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch;)F

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

    .line 253
    check-cast p1, Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch$1;->get(Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch;F)V
    .locals 0

    .line 261
    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch;->access$100(Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch;F)V

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

    .line 253
    check-cast p1, Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch$1;->setValue(Lcn/nubia/redmagickyi/view/RedmagicKyiSwitch;F)V

    return-void
.end method
