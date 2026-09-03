.class public Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;
.super Ljava/lang/Object;
.source "RedmagicBroadcastGameBeans.java"


# instance fields
.field private checked:Z

.field private checkedSettingsKey:Ljava/lang/String;

.field private focused:Z

.field private game:Ljava/lang/String;

.field private gamePackageName:Ljava/lang/String;

.field private pluginEnable:Z

.field private pluginEnableSettingsKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCheckedFromStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;)Z
    .locals 7

    .line 87
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 88
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getCheckedSettingsKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    .line 92
    :cond_0
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 93
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getGamePackageName()Ljava/lang/String;

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

    .line 101
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getCheckedSettingsKey()Ljava/lang/String;

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

.method public static setCheckedToStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;)V
    .locals 5

    .line 107
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->isChecked()Z

    move-result v0

    .line 108
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$Playmate;->keyMerged()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 109
    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getCheckedFromStorage(Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;)Z

    move-result v1

    .line 110
    const-string v2, ","

    if-eqz v0, :cond_2

    if-nez v1, :cond_4

    .line 113
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getCheckedSettingsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getCheckedSettingsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    .line 128
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getCheckedSettingsKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->getSecureSettingsString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getGamePackageName()Ljava/lang/String;

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

    .line 131
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getGamePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getGamePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getCheckedSettingsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_3
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->getCheckedSettingsKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->putSecureSettingsInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getCheckedSettingsKey()Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->checkedSettingsKey:Ljava/lang/String;

    return-object p0
.end method

.method public getGame()Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->game:Ljava/lang/String;

    return-object p0
.end method

.method public getGamePackageName()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->gamePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPluginEnableSettingsKey()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->pluginEnableSettingsKey:Ljava/lang/String;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->checked:Z

    return p0
.end method

.method public isFocused()Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->focused:Z

    return p0
.end method

.method public isPluginEnable()Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->pluginEnable:Z

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->checked:Z

    return-void
.end method

.method public setCheckedSettingsKey(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->checkedSettingsKey:Ljava/lang/String;

    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->focused:Z

    return-void
.end method

.method public setGame(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->game:Ljava/lang/String;

    return-void
.end method

.method public setGamePackageName(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->gamePackageName:Ljava/lang/String;

    return-void
.end method

.method public setPluginEnable(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->pluginEnable:Z

    return-void
.end method

.method public setPluginEnableSettingsKey(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->pluginEnableSettingsKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{game=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->game:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pluginEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->pluginEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/playmate/model/RedmagicBroadcastGameBeans;->checked:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
