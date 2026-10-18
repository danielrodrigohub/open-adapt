.class public final Lr0/f;
.super Ljava/lang/Object;
.source "EmojiTextViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr0/f$a;,
        Lr0/f$c;,
        Lr0/f$b;
    }
.end annotation


# instance fields
.field public final a:Lr0/f$b;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "textView cannot be null"

    .line 2
    invoke-static {p1, v0}, Lc3/d;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lr0/f$c;

    invoke-direct {v0, p1}, Lr0/f$c;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lr0/f;->a:Lr0/f$b;

    return-void
.end method
