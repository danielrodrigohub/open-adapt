.class public final Lr0/a;
.super Ljava/lang/Object;
.source "EmojiEditTextHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/a$a;,
        Lr0/a$b;
    }
.end annotation


# instance fields
.field public final a:Lr0/a$a;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "editText cannot be null"

    .line 2
    invoke-static {p1, v0}, Lc3/d;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lr0/a$a;

    invoke-direct {v0, p1}, Lr0/a$a;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Lr0/a;->a:Lr0/a$a;

    return-void
.end method
