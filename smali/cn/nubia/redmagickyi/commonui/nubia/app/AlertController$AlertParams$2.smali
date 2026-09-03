.class Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$2;
.super Landroid/widget/CursorAdapter;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;->createListView(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

.field final synthetic val$listView:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1188
    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$2;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;

    iput-object p5, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$2;->val$listView:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;

    iput-object p6, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$2;->val$dialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1193
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$2;->getCursor()Landroid/database/Cursor;

    move-result-object p2

    .line 1194
    iget-object p3, p1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$2;->mLabelIndex:I

    .line 1195
    iget-object p1, p1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .line 1200
    sget p2, Lcn/nubia/redmagickyi/main/R$id;->text1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 1201
    iget p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$2;->mLabelIndex:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$2;->val$listView:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$2;->mIsCheckedIndex:I

    .line 1203
    invoke-interface {p3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1202
    :goto_0
    invoke-virtual {p1, p2, p3}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$RecycleListView;->setItemChecked(IZ)V

    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1208
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$2;->this$0:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;

    iget-object p1, p1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController$AlertParams$2;->val$dialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->access$1200(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
