.class public final Lr0/f$c;
.super Lr0/f$b;
.source "EmojiTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lr0/f$a;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr0/f$b;-><init>()V

    .line 2
    new-instance v0, Lr0/f$a;

    invoke-direct {v0, p1}, Lr0/f$a;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lr0/f$c;->a:Lr0/f$a;

    return-void
.end method


# virtual methods
.method public final a([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/a;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lr0/f$c;->a:Lr0/f$a;

    .line 2
    iget-boolean v0, v0, Lr0/f$a;->c:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    sget-object p1, Landroidx/emoji2/text/a;->a:Ljava/lang/Object;

    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/emoji2/text/a;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lr0/f$c;->a:Lr0/f$a;

    .line 3
    iput-boolean p1, v0, Lr0/f$a;->c:Z

    return-void
.end method

.method public final e(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/a;->a:Ljava/lang/Object;

    return-object p1
.end method
