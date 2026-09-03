.class public Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;
.super Ljava/lang/Object;
.source "RedmagicSupportBeans.java"


# instance fields
.field private customSettingsKey:Ljava/lang/String;

.field private focused:Z

.field private game:Ljava/lang/String;

.field private gameChecked:Z

.field private gameCheckedSettingsKey:Ljava/lang/String;

.field private gamePackageName:Ljava/lang/String;

.field private levelLow:Z

.field private levelLowSettingsKey:Ljava/lang/String;

.field private pluginEnable:Z

.field private pluginEnableSettingsKey:Ljava/lang/String;

.field private resCode:I

.field private showText:Z

.field private showTextSettingsKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameCheckedFromStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;)Z
    .locals 7

    .line 132
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 133
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGameCheckedSettingsKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    .line 137
    :cond_0
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 138
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 139
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGamePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2

    .line 146
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGameCheckedSettingsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method public static setGameCheckedToStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;)V
    .locals 5

    .line 152
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->isGameChecked()Z

    move-result v0

    .line 153
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGameCheckedFromStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;)Z

    move-result v1

    .line 155
    const-string v2, ","

    if-eqz v0, :cond_2

    if-nez v1, :cond_4

    .line 158
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGameCheckedSettingsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGameCheckedSettingsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    .line 173
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGameCheckedSettingsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGamePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGamePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGameCheckedSettingsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->getGameCheckedSettingsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getCustomSettingsKey()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->customSettingsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getGame()Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->game:Ljava/lang/String;

    return-object p0
.end method

.method public getGameCheckedSettingsKey()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->gameCheckedSettingsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getGamePackageName()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->gamePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getLevelLowSettingsKey()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->levelLowSettingsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPluginEnableSettingsKey()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->pluginEnableSettingsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getResCode()I
    .locals 0

    .line 123
    iget p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->resCode:I

    return p0
.end method

.method public getShowTextSettingsKey()Ljava/lang/String;
    .locals 0

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->showTextSettingsKey:Ljava/lang/String;

    return-object p0
.end method

.method public isFocused()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->focused:Z

    return p0
.end method

.method public isGameChecked()Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->gameChecked:Z

    return p0
.end method

.method public isLevelLow()Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->levelLow:Z

    return p0
.end method

.method public isPluginEnable()Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->pluginEnable:Z

    return p0
.end method

.method public isShowText()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->showText:Z

    return p0
.end method

.method public setCustomSettingsKey(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->customSettingsKey:Ljava/lang/String;

    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->focused:Z

    return-void
.end method

.method public setGame(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->game:Ljava/lang/String;

    return-void
.end method

.method public setGameChecked(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->gameChecked:Z

    return-void
.end method

.method public setGameCheckedSettingsKey(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->gameCheckedSettingsKey:Ljava/lang/String;

    return-void
.end method

.method public setGamePackageName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->gamePackageName:Ljava/lang/String;

    return-void
.end method

.method public setLevelLow(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->levelLow:Z

    return-void
.end method

.method public setLevelLowSettingsKey(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->levelLowSettingsKey:Ljava/lang/String;

    return-void
.end method

.method public setPluginEnable(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->pluginEnable:Z

    return-void
.end method

.method public setPluginEnableSettingsKey(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->pluginEnableSettingsKey:Ljava/lang/String;

    return-void
.end method

.method public setResCode(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->resCode:I

    return-void
.end method

.method public setShowText(Z)V
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->showText:Z

    return-void
.end method

.method public setShowTextSettingsKey(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicSupportBeans;->showTextSettingsKey:Ljava/lang/String;

    return-void
.end method
