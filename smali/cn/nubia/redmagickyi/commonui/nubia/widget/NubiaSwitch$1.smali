.class Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch$1;
.super Lcn/nubia/redmagickyi/commonui/nubia/util/BaseFloatProperty;
.source "NubiaSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/commonui/nubia/util/BaseFloatProperty<",
        "Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1265
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/util/BaseFloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch;)Ljava/lang/Float;
    .locals 0

    .line 1268
    invoke-static {p1}, Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch;->access$000(Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch;)F

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

    .line 1265
    check-cast p1, Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch$1;->get(Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch;F)V
    .locals 0

    .line 1273
    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch;->access$100(Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch;F)V

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

    .line 1265
    check-cast p1, Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch$1;->setValue(Lcn/nubia/redmagickyi/commonui/nubia/widget/NubiaSwitch;F)V

    return-void
.end method
