.class public final La4/b$f;
.super Ljava/lang/Object;
.source "AtomParsers.java"

# interfaces
.implements La4/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Lm5/w;

.field public final b:I

.field public final c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(La4/a$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, La4/a$b;->b:Lm5/w;

    iput-object p1, p0, La4/b$f;->a:Lm5/w;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lm5/w;->D(I)V

    .line 4
    invoke-virtual {p1}, Lm5/w;->w()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, La4/b$f;->c:I

    .line 5
    invoke-virtual {p1}, Lm5/w;->w()I

    move-result p1

    iput p1, p0, La4/b$f;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, La4/b$f;->b:I

    return v0
.end method

.method public final c()I
    .locals 2

    .line 1
    iget v0, p0, La4/b$f;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, La4/b$f;->a:Lm5/w;

    invoke-virtual {v0}, Lm5/w;->t()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, La4/b$f;->a:Lm5/w;

    invoke-virtual {v0}, Lm5/w;->y()I

    move-result v0

    return v0

    .line 4
    :cond_1
    iget v0, p0, La4/b$f;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, La4/b$f;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, La4/b$f;->a:Lm5/w;

    invoke-virtual {v0}, Lm5/w;->t()I

    move-result v0

    iput v0, p0, La4/b$f;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 6
    :cond_2
    iget v0, p0, La4/b$f;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
