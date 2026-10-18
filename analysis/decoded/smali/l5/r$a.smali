.class public final Ll5/r$a;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Ll5/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ll5/a0;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ll5/a0;

    invoke-direct {v0}, Ll5/a0;-><init>()V

    iput-object v0, p0, Ll5/r$a;->a:Ll5/a0;

    const/16 v0, 0x1f40

    .line 3
    iput v0, p0, Ll5/r$a;->c:I

    .line 4
    iput v0, p0, Ll5/r$a;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ll5/j;
    .locals 5

    new-instance v0, Ll5/r;

    iget-object v1, p0, Ll5/r$a;->b:Ljava/lang/String;

    iget v2, p0, Ll5/r$a;->c:I

    iget v3, p0, Ll5/r$a;->d:I

    iget-object v4, p0, Ll5/r$a;->a:Ll5/a0;

    invoke-direct {v0, v1, v2, v3, v4}, Ll5/r;-><init>(Ljava/lang/String;IILl5/a0;)V

    return-object v0
.end method
