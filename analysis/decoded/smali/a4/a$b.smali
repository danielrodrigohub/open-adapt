.class public final La4/a$b;
.super La4/a;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lm5/w;


# direct methods
.method public constructor <init>(ILm5/w;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, La4/a;-><init>(I)V

    .line 2
    iput-object p2, p0, La4/a$b;->b:Lm5/w;

    return-void
.end method
