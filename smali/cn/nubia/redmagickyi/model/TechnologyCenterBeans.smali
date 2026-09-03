.class public Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;
.super Ljava/lang/Object;
.source "TechnologyCenterBeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/model/TechnologyCenterBeans$Type;
    }
.end annotation


# static fields
.field public static final ALARM_CLOCK:I = 0x1

.field public static final DESKTOP_PET:I = 0x4

.field public static final INTERACTIVE_WALLPAPER:I = 0x3

.field public static final LOW_BATTERY:I = 0x2

.field public static final POWER_CHARGE:I = 0x0

.field public static final REDMAGIC_ALARM_CLOCK:I = 0x5


# instance fields
.field private checked:Z

.field private describe:Ljava/lang/String;

.field private lock:Z

.field private settingsKey:Ljava/lang/String;

.field private thumbnail:Landroid/graphics/drawable/Drawable;

.field private titel:Ljava/lang/String;

.field private type:I

.field private videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->lock:Z

    .line 27
    iput p1, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->type:I

    return-void
.end method


# virtual methods
.method public getDescribe()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->describe:Ljava/lang/String;

    return-object p0
.end method

.method public getSettingsKey()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->settingsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 79
    iget-object p0, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->thumbnail:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTitel()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->titel:Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 31
    iget p0, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->type:I

    return p0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 0

    .line 71
    iget-object p0, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->videoPath:Ljava/lang/String;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->checked:Z

    return p0
.end method

.method public isLock()Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->lock:Z

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->checked:Z

    return-void
.end method

.method public setDescribe(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->describe:Ljava/lang/String;

    return-void
.end method

.method public setLock(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->lock:Z

    return-void
.end method

.method public setSettingsKey(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->settingsKey:Ljava/lang/String;

    return-void
.end method

.method public setThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->thumbnail:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTitel(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->titel:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->type:I

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcn/nubia/redmagickyi/model/TechnologyCenterBeans;->videoPath:Ljava/lang/String;

    return-void
.end method
