.class public final Le1/e;
.super Le1/d;
.source "FrameworkSQLiteStatement.java"

# interfaces
.implements Ld1/g;


# instance fields
.field public final i:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le1/d;-><init>(Landroid/database/sqlite/SQLiteProgram;)V

    .line 2
    iput-object p1, p0, Le1/e;->i:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method


# virtual methods
.method public final Z()J
    .locals 2

    iget-object v0, p0, Le1/e;->i:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Le1/e;->i:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    return v0
.end method
